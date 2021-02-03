<?php
$countries = $params['countries'];
?>
<div class="container mt-5">
    <h2>Information</h2>
    <form class="row g-3" id="form">
        <div class="col-md-6">
            <label for="name" class="form-label">Name</label>
            <input type="text" name="name" class="form-control required" id="name">
        </div>
        <div class="col-md-6">
            <label for="inputCity" class="form-label">Country</label>
            <select class="select-search w-100 form-control-select-2 required" name="country" id="inputCountry">
                <?php
                foreach ($countries as $index => $country) {
                    echo '<option value="'.$country['id'].'">'.$country['name'].'</option>';
                }
                ?>
            </select>
        </div>
        <div class="col-md-6">
            <label for="inputCity" class="form-label">City</label>
            <input type="text" name="city" class="form-control required" id="inputCity">
        </div>
        <div class="col-md-6">
            <label for="inputStreet" class="form-label">Street</label>
            <input type="text" name="street" class="form-control required" id="inputStreet">
        </div>
        <div class="col-md-2">
            <label for="inputApp" class="form-label">Apartment</label>
            <input type="text" name="apartment" class="form-control" id="inputApp">
        </div>
        <div class="col-md-4">
            <label for="inputDate" class="form-label">Delivery date</label>
            <input class="form-control" name="date" type="date" id="inputDate">
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-primary">Send form</button>
        </div>
    </form>
</div>
