<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <style>
header {
  padding: 7vh 5vw;
  border-bottom: 1px solid #ddd;
}
header h1,
header p {
  margin: 0;
}
footer {
  padding: 7vh 5vw;
  border-top: 1px solid #ddd;
}
aside {
  padding: 7vh 5vw;
}
.primary {
  overflow: auto;
  scroll-snap-type: both mandatory;
  height: 80vh;
}
@media (min-width: 50em) {
  main {
    display: flex;
  }
  aside {
    flex: 0 1 20vw;
    order: 1;
    border-right: 1px solid #ddd;
  }
  .primary {
    order: 2;
  }
}
table {
  border-collapse: collapse;
  border: 0;
}
th,
td {
  border: 1px solid #aaa;
  background-clip: padding-box;
  scroll-snap-align: start;
}
tbody tr:last-child th,
tbody tr:last-child td {
  border-bottom: 0;
}
thead {
  z-index: 1000;
  position: relative;
}
th,
td {
  padding: 0.6rem;
  min-width: 6rem;
  text-align: left;
  margin: 0;
}
thead th {
  position: sticky;
  top: 0;
  border-top: 0;
  background-clip: padding-box;
}
thead th.pin {
  left: 0;
  z-index: 1001;
  border-left: 0;
}
tbody th {
  background-clip: padding-box;
  border-left: 0;
}
tbody {
  z-index: 10;
  position: relative;
}
tbody th {
  position: sticky;
  left: 0;
}
thead th,
tbody th {
  background-color: #f8f8f8;
}
        </style>
        <style data-jss="" data-meta="makeStyles">
.jss101 {
  margin: 15px 0;
  padding-bottom: 8px;
}
.jss101::-webkit-scrollbar-track {
  border-radius: 4px;
}
.jss101:hover::-webkit-scrollbar-track {
  border-radius: 6px;
}
.jss104 {
  width: 100%;
}
.jss103 {
  border: 1px solid #CCCCCC;
  margin: 0;
  position: relative;
  box-shadow: 0 0 6px 0 rgba(0,0,0,0.08);
  border-radius: 6px;
  background-color: #FFFFFF;
}
.jss105 {
  height: 240px;
}
.jss105:not(:last-child) > div {
  padding-bottom: 24px;
}
.jss106 {
  color: #222222;
  padding: 12px;
  font-size: 12px;
  font-weight: bold;
  line-height: 14px;
  border-bottom: 1px solid #CCCCCC;
}
.jss107 {
  flex-shrink: 0;
}
.jss107:last-child {
  padding-right: 0;
}
.jss107:not(:last-child) {
  padding-right: 2px;
}
.jss108 {
  width: 100%;
  overflow: hidden;
}
.jss108:focus {
  outline: none;
}
.jss109 {
  color: #000000;
  cursor: pointer;
  padding: 2px 0px 0px 12px;
  overflow: hidden;
  font-size: 12px;
  white-space: nowrap;
  text-overflow: ellipsis;
}
</style>
<style data-jss="" data-meta="Category">
.Category-container {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  box-sizing: border-box;
}
.Category-item {
  margin: 0;
  box-sizing: border-box;
}
.Category-wrap-xs-nowrap {
  flex-wrap: nowrap;
}

.Category-spacing-xs-2 {
  width: calc(100% + 16px);
  margin: -8px;
}
.Category-spacing-xs-2 > .Category-item {
  padding: 8px;
}

</style>
<div class="jss103">
<div class="jss106">카테고리</div>
<div class="jss105">
<div class="jss376 jss383">
</div>

<div tabindex="0" class="jss108" data-testid="filter-box-outer-ref">
<fieldset class="MuiFormControl-root">
<div class="MuiFormGroup-root" data-testid="filter-box-group--4">
<div style="position: relative; height: 190px; width: 206.412px; overflow: auto; will-change: auto; direction: ltr;">
<div tabindex="0" data-testid="filter-box-inner-ref" style="height: 260px; width: 100%; outline: none;">
<span class="jss109" title="-" data-testid="filter--4-label-818" data-index="0" data-focused="false" data-filter-key="-4" data-filter-value="818" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 0px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-818" Onclick="location.href='/product/opticalsensor?c=100'">Optical Sensors</span></span>
<span class="jss109" title="*" data-testid="filter--4-label-0" data-index="1" data-focused="false" data-filter-key="-4" data-filter-value="0" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 20px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-0" Onclick="location.href='/product/leds?c=200'">LEDs</span></span>
<span class="jss109" title="0603" data-testid="filter--4-label-91606" data-index="2" data-focused="false" data-filter-key="-4" data-filter-value="91606" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 40px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-91606" Onclick="location.href='/product/productlist?c=300'">Detectors</span></span>
<span class="jss109" title="0805" data-testid="filter--4-label-91607" data-index="3" data-focused="false" data-filter-key="-4" data-filter-value="91607" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 60px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-91607">-</span></span>
<span class="jss109" title="1101F" data-testid="filter--4-label-16840" data-index="4" data-focused="false" data-filter-key="-4" data-filter-value="16840" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 80px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-16840">-</span></span>
<span class="jss109" title="1101W" data-testid="filter--4-label-16841" data-index="5" data-focused="false" data-filter-key="-4" data-filter-value="16841" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 100px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-16841">-</span></span>
</div>
</div>
</div>
</fieldset>
</div>

<div class="jss360">
</div></div></div>