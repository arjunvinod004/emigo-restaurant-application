//MARK: Show popup alert
export function showPopupAlert(type, message, reload = false, hideAfter = 1500) 
{
    let modalId = (type === 'success') ? '#successModal' : '#errorModal';
    $(modalId + ' .modal-body').text(message);
    $(modalId).modal('show');
    setTimeout(function () {
        $(modalId).modal('hide');
        if (reload) {
            location.reload();
        }
    }, hideAfter);
}
