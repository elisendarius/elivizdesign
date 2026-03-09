function getLightboxElements() {
  return {
    lightbox: document.getElementById('lightbox'),
    lightboxImg: document.getElementById('lightbox-img')
  };
}

function openLightbox(src) {
  const { lightbox, lightboxImg } = getLightboxElements();
  if (!lightbox || !lightboxImg) return;

  lightboxImg.src = src;
  lightbox.style.display = 'flex';
  document.body.style.overflow = 'hidden';
}

function closeLightbox(event) {
  const { lightbox, lightboxImg } = getLightboxElements();
  if (!lightbox || !lightboxImg) return;

  if (!event || event.target.id === 'lightbox') {
    lightbox.style.display = 'none';
    lightboxImg.src = '';
    document.body.style.overflow = '';
  }
}

document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('.zoomable-image').forEach(function (image) {
    image.addEventListener('click', function () {
      openLightbox(image.src);
    });
  });
});

document.addEventListener('keydown', function (event) {
  const { lightbox } = getLightboxElements();
  if (event.key === 'Escape' && lightbox && lightbox.style.display === 'flex') {
    closeLightbox();
  }
});
