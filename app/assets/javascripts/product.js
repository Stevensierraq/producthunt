$(function(){
	Dropzone.autoDiscover = false;
	$('#dz-space').dropzone({
		maxFilesize: 15,
		paramName: 'product[image]',
		uploadMultiple:   false,
		addRemoveLinks: true,
		success: function(file, response){
			$(file.previewTemplate).find('.dz-remove').attr('id',response.fileId);
			$(file.previewTemplate).addClass('dz-success');
		}
	});
});