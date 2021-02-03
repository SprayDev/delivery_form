$(function() {
    const checkValidate = (item, name) => {
        if (name == 'name')
            return /(\D{1,}) (\D{1,})/.test(item.value)
        return item.value.length >= 1;
    }

    $("#form").submit((e) => {
        e.preventDefault();
        let inputs = $(e.target).find('input[class~="required"]');
        let validateFlag = true;
        let btn = $(e.target).find('button[type="submit"]');
        $(btn).addClass('disabled');
        inputs.each((index, item, array) => {
            if (!checkValidate(item, item.name)){
                validateFlag = false;
                if (!$(item).hasClass('is-invalid')) {
                    $(item).addClass('is-invalid')
                    $(item).after('<div id="invalid_'+item.name+'" class="invalid-feedback">\n' +
                        '                This field is required.\n' +
                        '            </div>')
                }
            } else {
                if ($(item).hasClass('is-invalid')) {
                    $(item).removeClass('is-invalid')
                    $(item).parent().find('#invalid_'+item.name).remove();
                    $(item).addClass('is-valid')
                }
            }
        })
        if (validateFlag)
        {
            let formData = new FormData(e.target)
            $.ajax('api/sendForm', {
                data: formData,
                processData: false,
                contentType: false,
                type: 'POST',
                success: (data) => {
                    $(btn).removeClass('disabled');
                    $('div[class~="container"]').append('<div class="alert alert-success my-3 alert-dismissible" role="alert">\n' +
                        '  Form has been sent successfully \n' +
                        '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>\n' +
                        '</div>');
                    e.target.reset()
                }
            })
        } else {
            $(btn).removeClass('disabled');
        }
    })
    $('.select-search').select2({
        selectionCssClass: 'select2-custom form-control',
    });
});