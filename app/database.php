<?php
namespace app;

class database{

    public $pdo;

    public function __construct()
    {

        $settings = $this->getPDOSettings();
        $this->pdo = new \PDO($settings['dsn'], $settings['user'], $settings['pass'], null);
        $db_countries = $this->execute('select * from countries');
        if (!$db_countries) {
            $countries = json_decode(file_get_contents('https://restcountries.eu/rest/v2/all'));
            foreach ($countries as $index => $country) {
                $data = [
                    'name' => $country->name,
                    'code' => $country->alpha2Code ?? 'NaN'
                ];
                $this->insert('countries', $data);
            }
        }
    }

    protected function getPDOSettings()
    {

        $config = include ROOTPATH.DIRECTORY_SEPARATOR.'Config'.DIRECTORY_SEPARATOR.'database.php';
        $result['dsn'] = "{$config['type']}:host={$config['host']};dbname={$config['dbname']};charset={$config['charset']}";
        $result['user'] = $config['user'];
        $result['pass'] = $config['pass'];
        return $result;
    }

    public function execute($query, array $params=null)
    {

        if(is_null($params)){
            $stmt = $this->pdo->query($query);
            return $stmt->fetchAll();
        }
        $stmt = $this->pdo->prepare($query);
        $stmt->execute($params);
        return $stmt->fetchAll();

    }

    public function insert($table, $data)
    {
        foreach ($data as $idx=>$item)
        {
            if ($item) {
                $result_values[$idx] = "'".$item."'";
            } else {
                unset($data[$idx]);
            }
        }
        $columns = implode(", ",array_keys($data));
        $result_values  = implode(", ", $result_values);
        $query = "INSERT INTO $table ($columns) VALUES ($result_values)";
        $stmt = $this->pdo->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll();
    }
}
