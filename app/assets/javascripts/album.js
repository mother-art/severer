$(document).on('turbolinks:load', ()=> {
  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" class="previews__image" width="150px" height="150px">`;
    return html;
  }
  //画像を選択したら選択した画像のプレビューを表示。
  $(function() {
    $(document).on("change", ".new_album__picture__hidden", function(e) {
      console.log($(this).parent().data('index'));
      const targetIndex = $(this).parent().data('index');
      const file = e.target.files[0];
      const blobUrl = window.URL.createObjectURL(file);
      $('.preview').append(buildImg(targetIndex, blobUrl));
      // $(".new_album").append(buildInput())
    });
  });
});