function onPreviewClick() {
  const flowerDescription1 = document.getElementById("flower_description_1");
  const flowerDescription2 = document.getElementById("flower_description_2");

  const flowerDescription1Content = document.getElementById(
    "flower-description-1-content"
  );
  const flowerDescription2Content = document.getElementById(
    "flower-description-2-content"
  );

  flowerDescription1Content.innerHTML = flowerDescription1.value;
  flowerDescription2Content.innerHTML = flowerDescription2.value;
}
