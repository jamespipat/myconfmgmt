<!-- inline styles -->
<p style="color: red; font-size: 20px;">I'm learning to code!</p>

<!-- The <style> Tag -->
<head>
  <style>
    p {
      color: red;
      font-size: 20px;
    }
  </style>
</head>

<!-- link the css file -->
<head>
    <link href="./style.css" type="text/css" rel="stylesheet">
<head>

<!-- tag name -->
p {
  font-family: Arial;
}
h1 {
  color: maroon;
}

<!-- Class Name -->
.title {
  color: maroon;
}

<!-- Multiple Classes -->
<h1 class="green bold"> ... </h1>

<!-- ID Name (id overides tag and class-->
<h1 id="large-title"> ... </h1>
#large-title {
...
}

<!-- Chaining Selectors -->
h1.special {
...
}

<!-- Nested Elements -->
.main-list li {
...
}

<!-- Important(overide it all no matter what) -->
p {
  color: blue !important;
}

<!-- preventing repetitive  -->
h1, .menu {
  font-family: Georgia;
}

<!-- css file example -->
h1, h2, p, li {
  font-family: Helvetica;
}

img {
  height: 150px;
}

.description {
  font-size: 20px;
}

#cook-time {
  font-weight: bold;
}

.ingredients li {
  list-style: square;
}

p.time {
  color: gray;
}

.external-link {
  color: SeaGreen;
}