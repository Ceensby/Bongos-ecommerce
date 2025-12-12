document.addEventListener("DOMContentLoaded", function () {
  initCategoryMenu();
});

function initCategoryMenu() {
  // 1. seviye: Makeup, Parfüm, Cilt Bakımı vs.
  const mainCategoryButtons = document.querySelectorAll(".sub-category-title");

  mainCategoryButtons.forEach((btn) => {
    btn.addEventListener("click", function () {
      const category = btn.closest(".sub-category");
      if (category) {
        category.classList.toggle("open");
      }
    });
  });

  // 2. seviye: Face, Eyes, Lips vs.
  const subCategoryButtons = document.querySelectorAll(".sub-subcategory-title");

  subCategoryButtons.forEach((btn) => {
    btn.addEventListener("click", function (e) {
      e.preventDefault(); // sayfa yukarı zıplamasın
      const subCategory = btn.closest(".subcategorywithchilds");
      if (subCategory) {
        subCategory.classList.toggle("open");
      }
    });
  });
}

// Promotion Area

document.addEventListener("DOMContentLoaded", () => {
  const bar = document.querySelector(".promo-bar");
  const track = document.querySelector("#promoTrack");
  if (!bar || !track) return;

  // 1) İlk içeriği kopyala (template gibi)
  const original = track.innerHTML;

  // 2) Track genişliği bar'ı rahatça doldurana kadar çoğalt
  // (bar genişliğinin en az 2 katı olunca -50% loop boşluksuz olur)
  while (track.scrollWidth < bar.clientWidth * 2) {
    track.innerHTML += original;
  }
});
