<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dahlson Shop - Solution for you!</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/index/styles.css" rel="stylesheet" />
        <style>
         section#container { }
 		 aside#aside { float:left; width:180px; }
		 aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
		 aside#aside li { font-size:16px; text-align:center; }
		 aside#aside li a { color:#000; display:block; padding:10px 0; }
		 aside#aside li a:hover { text-decoration:none; background:#eee; }
		 section#content ul li { display:inline-block; margin:10px; }
		 section#content div.productThumb img { width:200px; height:200px; }
		 section#content div.productName { padding:10px 0; text-align:center; }
 		 section#content div.productName a { color:#000; }
        </style>
        <style data-jss="" data-meta="makeStyles">
.jss353 {
  margin: 15px 0;
  padding-bottom: 8px;
}
.jss353::-webkit-scrollbar-track {
  border-radius: 4px;
}
.jss353:hover::-webkit-scrollbar-track {
  border-radius: 6px;
}
.jss354 {
  width: 100%;
}
</style>
<style data-jss="" data-meta="makeStyles">
.jss356 {
  border: 1px solid #CCCCCC;
  margin: 0;
  position: relative;
  box-shadow: 0 0 6px 0 rgba(0,0,0,0.08);
  border-radius: 6px;
  background-color: #FFFFFF;
}
.jss357 {
  height: 240px;
}
.jss357:not(:last-child) > div {
  padding-bottom: 24px;
}
.jss358 {
  color: #222222;
  padding: 12px;
  font-size: 12px;
  font-weight: bold;
  line-height: 14px;
  border-bottom: 1px solid #CCCCCC;
}
.jss359 {
  color: #1A1552;
  cursor: pointer;
  font-size: 12px;
  font-weight: bold;
  line-height: 14px;
  text-decoration: none;
}
.jss360 {
  top: auto;
  right: auto;
  width: calc(100% - 12px);
  bottom: 0;
  padding: 5.6px 10px;
  z-index: 2;
  position: absolute;
  box-shadow: none;
  background-color: #FFFFFF;
}
.jss361 {
  padding-right: 12px;
  background-color: #FFFFFF;
}
.jss362 {
  cursor: default;
  border-bottom: 1px dashed #444444;
}
.jss363 {
  flex-shrink: 0;
}
.jss363:last-child {
  padding-right: 0;
}
.jss363:not(:last-child) {
  padding-right: 2px;
}
.jss364 {
  width: 75px;
  border: 1px solid #CCCCCC;
  height: 27px;
  margin: 0px 0px 8px 0px;
  display: inline-block;
  padding-left: 8px;
  border-radius: 4px;
}
.jss364:not(:last-child) {
  margin-right: 8px;
}
.jss365 {
  color: #CC0000;
  font-size: 10px;
}
.jss366 {
  padding: 12px 0px 0px 12px;
}
.jss367 {
  width: auto;
  min-width: 0;
  padding-left: 4px;
}
</style>
<style data-jss="" data-meta="makeStyles">
.jss368 {
  outline: 1px auto #000000;
  margin-left: 0px !important;
}
.jss369.jss369 {
  color: #CCCCCC;
  cursor: default;
}
.jss370 {
  width: 100%;
  overflow: hidden;
}
.jss370:focus {
  outline: none;
}
.jss371.jss371 {
  color: #FFFFFF;
  background-color: rgb(30,144,255);
}
.jss372 {
  color: #444444;
  overflow: hidden;
  font-size: 12px;
  line-height: 14px;
  white-space: nowrap;
  text-overflow: ellipsis;
}
@media (min-width:1200px) {
  .jss372 {
    font-size: 13px;
    line-height: 16px;
  }
}
.jss373.jss373 {
  align-items: flex-start;
  margin-left: -3px;
  margin-right: 0;
}
.jss374:hover {
  color: #FFFFFF;
  background-color: rgba(30,144,255,0.8);
}
.jss375 {
  width: 100%;
  border: 1px solid #CCCCCC;
  height: 27px;
  display: block;
  padding-left: 8px;
  border-radius: 4px;
}
.jss375:focus {
  outline: none;
}
.jss377 {
  color: #000000;
  cursor: pointer;
  padding: 2px 0px 0px 12px;
  overflow: hidden;
  font-size: 12px;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.jss378 {
  color: #FFFFFF;
  background-color: rgb(30,144,255);
}
.jss379 {
  color: #FFFFFF;
  cursor: default;
  background-color: rgba(158,207,255,0.8);
}
.jss380 {
  font-size: 11px;
  margin-right: 16px;
}
.jss381 {
  display: inline-flex;
  font-size: 10px;
  font-weight: bold;
  padding-right: 6px;
  text-transform: uppercase;
}
.jss382 {
  margin: 6px;
}
</style>
<style data-jss="" data-meta="MuiGrid">
.MuiGrid-container {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  box-sizing: border-box;
}
.MuiGrid-item {
  margin: 0;
  box-sizing: border-box;
}
.MuiGrid-zeroMinWidth {
  min-width: 0;
}
.MuiGrid-direction-xs-column {
  flex-direction: column;
}
.MuiGrid-direction-xs-column-reverse {
  flex-direction: column-reverse;
}
.MuiGrid-direction-xs-row-reverse {
  flex-direction: row-reverse;
}
.MuiGrid-wrap-xs-nowrap {
  flex-wrap: nowrap;
}
.MuiGrid-wrap-xs-wrap-reverse {
  flex-wrap: wrap-reverse;
}
.MuiGrid-align-items-xs-center {
  align-items: center;
}
.MuiGrid-align-items-xs-flex-start {
  align-items: flex-start;
}
.MuiGrid-align-items-xs-flex-end {
  align-items: flex-end;
}
.MuiGrid-align-items-xs-baseline {
  align-items: baseline;
}
.MuiGrid-align-content-xs-center {
  align-content: center;
}
.MuiGrid-align-content-xs-flex-start {
  align-content: flex-start;
}
.MuiGrid-align-content-xs-flex-end {
  align-content: flex-end;
}
.MuiGrid-align-content-xs-space-between {
  align-content: space-between;
}
.MuiGrid-align-content-xs-space-around {
  align-content: space-around;
}
.MuiGrid-justify-content-xs-center {
  justify-content: center;
}
.MuiGrid-justify-content-xs-flex-end {
  justify-content: flex-end;
}
.MuiGrid-justify-content-xs-space-between {
  justify-content: space-between;
}
.MuiGrid-justify-content-xs-space-around {
  justify-content: space-around;
}
.MuiGrid-justify-content-xs-space-evenly {
  justify-content: space-evenly;
}
.MuiGrid-spacing-xs-1 {
  width: calc(100% + 8px);
  margin: -4px;
}
.MuiGrid-spacing-xs-1 > .MuiGrid-item {
  padding: 4px;
}
.MuiGrid-spacing-xs-2 {
  width: calc(100% + 16px);
  margin: -8px;
}
.MuiGrid-spacing-xs-2 > .MuiGrid-item {
  padding: 8px;
}
.MuiGrid-spacing-xs-3 {
  width: calc(100% + 24px);
  margin: -12px;
}
.MuiGrid-spacing-xs-3 > .MuiGrid-item {
  padding: 12px;
}
.MuiGrid-spacing-xs-4 {
  width: calc(100% + 32px);
  margin: -16px;
}
.MuiGrid-spacing-xs-4 > .MuiGrid-item {
  padding: 16px;
}
.MuiGrid-spacing-xs-5 {
  width: calc(100% + 40px);
  margin: -20px;
}
.MuiGrid-spacing-xs-5 > .MuiGrid-item {
  padding: 20px;
}
.MuiGrid-spacing-xs-6 {
  width: calc(100% + 48px);
  margin: -24px;
}
.MuiGrid-spacing-xs-6 > .MuiGrid-item {
  padding: 24px;
}
.MuiGrid-spacing-xs-7 {
  width: calc(100% + 56px);
  margin: -28px;
}
.MuiGrid-spacing-xs-7 > .MuiGrid-item {
  padding: 28px;
}
.MuiGrid-spacing-xs-8 {
  width: calc(100% + 64px);
  margin: -32px;
}
.MuiGrid-spacing-xs-8 > .MuiGrid-item {
  padding: 32px;
}
.MuiGrid-spacing-xs-9 {
  width: calc(100% + 72px);
  margin: -36px;
}
.MuiGrid-spacing-xs-9 > .MuiGrid-item {
  padding: 36px;
}
.MuiGrid-spacing-xs-10 {
  width: calc(100% + 80px);
  margin: -40px;
}
.MuiGrid-spacing-xs-10 > .MuiGrid-item {
  padding: 40px;
}
.MuiGrid-grid-xs-auto {
  flex-grow: 0;
  max-width: none;
  flex-basis: auto;
}
.MuiGrid-grid-xs-true {
  flex-grow: 1;
  max-width: 100%;
  flex-basis: 0;
}
.MuiGrid-grid-xs-1 {
  flex-grow: 0;
  max-width: 8.333333%;
  flex-basis: 8.333333%;
}
.MuiGrid-grid-xs-2 {
  flex-grow: 0;
  max-width: 16.666667%;
  flex-basis: 16.666667%;
}
.MuiGrid-grid-xs-3 {
  flex-grow: 0;
  max-width: 25%;
  flex-basis: 25%;
}
.MuiGrid-grid-xs-4 {
  flex-grow: 0;
  max-width: 33.333333%;
  flex-basis: 33.333333%;
}
.MuiGrid-grid-xs-5 {
  flex-grow: 0;
  max-width: 41.666667%;
  flex-basis: 41.666667%;
}
.MuiGrid-grid-xs-6 {
  flex-grow: 0;
  max-width: 50%;
  flex-basis: 50%;
}
.MuiGrid-grid-xs-7 {
  flex-grow: 0;
  max-width: 58.333333%;
  flex-basis: 58.333333%;
}
.MuiGrid-grid-xs-8 {
  flex-grow: 0;
  max-width: 66.666667%;
  flex-basis: 66.666667%;
}
.MuiGrid-grid-xs-9 {
  flex-grow: 0;
  max-width: 75%;
  flex-basis: 75%;
}
.MuiGrid-grid-xs-10 {
  flex-grow: 0;
  max-width: 83.333333%;
  flex-basis: 83.333333%;
}
.MuiGrid-grid-xs-11 {
  flex-grow: 0;
  max-width: 91.666667%;
  flex-basis: 91.666667%;
}
.MuiGrid-grid-xs-12 {
  flex-grow: 0;
  max-width: 100%;
  flex-basis: 100%;
}
@media (min-width:768px) {
  .MuiGrid-grid-sm-auto {
    flex-grow: 0;
    max-width: none;
    flex-basis: auto;
  }
  .MuiGrid-grid-sm-true {
    flex-grow: 1;
    max-width: 100%;
    flex-basis: 0;
  }
  .MuiGrid-grid-sm-1 {
    flex-grow: 0;
    max-width: 8.333333%;
    flex-basis: 8.333333%;
  }
  .MuiGrid-grid-sm-2 {
    flex-grow: 0;
    max-width: 16.666667%;
    flex-basis: 16.666667%;
  }
  .MuiGrid-grid-sm-3 {
    flex-grow: 0;
    max-width: 25%;
    flex-basis: 25%;
  }
  .MuiGrid-grid-sm-4 {
    flex-grow: 0;
    max-width: 33.333333%;
    flex-basis: 33.333333%;
  }
  .MuiGrid-grid-sm-5 {
    flex-grow: 0;
    max-width: 41.666667%;
    flex-basis: 41.666667%;
  }
  .MuiGrid-grid-sm-6 {
    flex-grow: 0;
    max-width: 50%;
    flex-basis: 50%;
  }
  .MuiGrid-grid-sm-7 {
    flex-grow: 0;
    max-width: 58.333333%;
    flex-basis: 58.333333%;
  }
  .MuiGrid-grid-sm-8 {
    flex-grow: 0;
    max-width: 66.666667%;
    flex-basis: 66.666667%;
  }
  .MuiGrid-grid-sm-9 {
    flex-grow: 0;
    max-width: 75%;
    flex-basis: 75%;
  }
  .MuiGrid-grid-sm-10 {
    flex-grow: 0;
    max-width: 83.333333%;
    flex-basis: 83.333333%;
  }
  .MuiGrid-grid-sm-11 {
    flex-grow: 0;
    max-width: 91.666667%;
    flex-basis: 91.666667%;
  }
  .MuiGrid-grid-sm-12 {
    flex-grow: 0;
    max-width: 100%;
    flex-basis: 100%;
  }
}
@media (min-width:1024px) {
  .MuiGrid-grid-md-auto {
    flex-grow: 0;
    max-width: none;
    flex-basis: auto;
  }
  .MuiGrid-grid-md-true {
    flex-grow: 1;
    max-width: 100%;
    flex-basis: 0;
  }
  .MuiGrid-grid-md-1 {
    flex-grow: 0;
    max-width: 8.333333%;
    flex-basis: 8.333333%;
  }
  .MuiGrid-grid-md-2 {
    flex-grow: 0;
    max-width: 16.666667%;
    flex-basis: 16.666667%;
  }
  .MuiGrid-grid-md-3 {
    flex-grow: 0;
    max-width: 25%;
    flex-basis: 25%;
  }
  .MuiGrid-grid-md-4 {
    flex-grow: 0;
    max-width: 33.333333%;
    flex-basis: 33.333333%;
  }
  .MuiGrid-grid-md-5 {
    flex-grow: 0;
    max-width: 41.666667%;
    flex-basis: 41.666667%;
  }
  .MuiGrid-grid-md-6 {
    flex-grow: 0;
    max-width: 50%;
    flex-basis: 50%;
  }
  .MuiGrid-grid-md-7 {
    flex-grow: 0;
    max-width: 58.333333%;
    flex-basis: 58.333333%;
  }
  .MuiGrid-grid-md-8 {
    flex-grow: 0;
    max-width: 66.666667%;
    flex-basis: 66.666667%;
  }
  .MuiGrid-grid-md-9 {
    flex-grow: 0;
    max-width: 75%;
    flex-basis: 75%;
  }
  .MuiGrid-grid-md-10 {
    flex-grow: 0;
    max-width: 83.333333%;
    flex-basis: 83.333333%;
  }
  .MuiGrid-grid-md-11 {
    flex-grow: 0;
    max-width: 91.666667%;
    flex-basis: 91.666667%;
  }
  .MuiGrid-grid-md-12 {
    flex-grow: 0;
    max-width: 100%;
    flex-basis: 100%;
  }
}
@media (min-width:1200px) {
  .MuiGrid-grid-lg-auto {
    flex-grow: 0;
    max-width: none;
    flex-basis: auto;
  }
  .MuiGrid-grid-lg-true {
    flex-grow: 1;
    max-width: 100%;
    flex-basis: 0;
  }
  .MuiGrid-grid-lg-1 {
    flex-grow: 0;
    max-width: 8.333333%;
    flex-basis: 8.333333%;
  }
  .MuiGrid-grid-lg-2 {
    flex-grow: 0;
    max-width: 16.666667%;
    flex-basis: 16.666667%;
  }
  .MuiGrid-grid-lg-3 {
    flex-grow: 0;
    max-width: 25%;
    flex-basis: 25%;
  }
  .MuiGrid-grid-lg-4 {
    flex-grow: 0;
    max-width: 33.333333%;
    flex-basis: 33.333333%;
  }
  .MuiGrid-grid-lg-5 {
    flex-grow: 0;
    max-width: 41.666667%;
    flex-basis: 41.666667%;
  }
  .MuiGrid-grid-lg-6 {
    flex-grow: 0;
    max-width: 50%;
    flex-basis: 50%;
  }
  .MuiGrid-grid-lg-7 {
    flex-grow: 0;
    max-width: 58.333333%;
    flex-basis: 58.333333%;
  }
  .MuiGrid-grid-lg-8 {
    flex-grow: 0;
    max-width: 66.666667%;
    flex-basis: 66.666667%;
  }
  .MuiGrid-grid-lg-9 {
    flex-grow: 0;
    max-width: 75%;
    flex-basis: 75%;
  }
  .MuiGrid-grid-lg-10 {
    flex-grow: 0;
    max-width: 83.333333%;
    flex-basis: 83.333333%;
  }
  .MuiGrid-grid-lg-11 {
    flex-grow: 0;
    max-width: 91.666667%;
    flex-basis: 91.666667%;
  }
  .MuiGrid-grid-lg-12 {
    flex-grow: 0;
    max-width: 100%;
    flex-basis: 100%;
  }
}
@media (min-width:1440px) {
  .MuiGrid-grid-xl-auto {
    flex-grow: 0;
    max-width: none;
    flex-basis: auto;
  }
  .MuiGrid-grid-xl-true {
    flex-grow: 1;
    max-width: 100%;
    flex-basis: 0;
  }
  .MuiGrid-grid-xl-1 {
    flex-grow: 0;
    max-width: 8.333333%;
    flex-basis: 8.333333%;
  }
  .MuiGrid-grid-xl-2 {
    flex-grow: 0;
    max-width: 16.666667%;
    flex-basis: 16.666667%;
  }
  .MuiGrid-grid-xl-3 {
    flex-grow: 0;
    max-width: 25%;
    flex-basis: 25%;
  }
  .MuiGrid-grid-xl-4 {
    flex-grow: 0;
    max-width: 33.333333%;
    flex-basis: 33.333333%;
  }
  .MuiGrid-grid-xl-5 {
    flex-grow: 0;
    max-width: 41.666667%;
    flex-basis: 41.666667%;
  }
  .MuiGrid-grid-xl-6 {
    flex-grow: 0;
    max-width: 50%;
    flex-basis: 50%;
  }
  .MuiGrid-grid-xl-7 {
    flex-grow: 0;
    max-width: 58.333333%;
    flex-basis: 58.333333%;
  }
  .MuiGrid-grid-xl-8 {
    flex-grow: 0;
    max-width: 66.666667%;
    flex-basis: 66.666667%;
  }
  .MuiGrid-grid-xl-9 {
    flex-grow: 0;
    max-width: 75%;
    flex-basis: 75%;
  }
  .MuiGrid-grid-xl-10 {
    flex-grow: 0;
    max-width: 83.333333%;
    flex-basis: 83.333333%;
  }
  .MuiGrid-grid-xl-11 {
    flex-grow: 0;
    max-width: 91.666667%;
    flex-basis: 91.666667%;
  }
  .MuiGrid-grid-xl-12 {
    flex-grow: 0;
    max-width: 100%;
    flex-basis: 100%;
  }
}
</style>
    </head>
    <body>
        <!-- Navigation-->
     		<jsp:include page="/WEB-INF/views/include/header.jsp" />
        
        <section>
<div class="jss353 jss355" data-testid="section-filters">
<div class="MuiGrid-root MuiGrid-container jss354 MuiGrid-spacing-xs-2 MuiGrid-wrap-xs-nowrap">
<div class="MuiGrid-root MuiGrid-item jss363">
<div class="jss356">
<div class="jss358">카테고리</div>
<div class="jss357">
<div class="jss376 jss383">
</div>

<div tabindex="0" class="jss370" data-testid="filter-box-outer-ref">
<fieldset class="MuiFormControl-root">
<div class="MuiFormGroup-root" data-testid="filter-box-group--4">
<div style="position: relative; height: 190px; width: 206.412px; overflow: auto; will-change: auto; direction: ltr;">
<div tabindex="0" data-testid="filter-box-inner-ref" style="height: 260px; width: 100%; outline: none;">
<span class="jss377" title="-" data-testid="filter--4-label-818" data-index="0" data-focused="false" data-filter-key="-4" data-filter-value="818" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 0px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-818" Onclick="location.href='/product/opticalsensor?c=100'">Optical Sensors</span></span>
<span class="jss377" title="*" data-testid="filter--4-label-0" data-index="1" data-focused="false" data-filter-key="-4" data-filter-value="0" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 20px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-0" Onclick="location.href='/product/leds?c=200'">LEDs</span></span>
<span class="jss377" title="0603" data-testid="filter--4-label-91606" data-index="2" data-focused="false" data-filter-key="-4" data-filter-value="91606" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 40px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-91606" Onclick="location.href='/product/detector?c=300'">Detectors</span></span>
<span class="jss377" title="0805" data-testid="filter--4-label-91607" data-index="3" data-focused="false" data-filter-key="-4" data-filter-value="91607" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 60px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-91607">-</span></span>
<span class="jss377" title="1101F" data-testid="filter--4-label-16840" data-index="4" data-focused="false" data-filter-key="-4" data-filter-value="16840" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 80px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-16840">-</span></span>
<span class="jss377" title="1101W" data-testid="filter--4-label-16841" data-index="5" data-focused="false" data-filter-key="-4" data-filter-value="16841" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 100px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-16841">-</span></span>
</div></div></div></fieldset></div>

<div class="jss360">
</div></div></div></div>


<div class="MuiGrid-root MuiGrid-item jss363">
<div class="jss356">
<div class="jss358">파장</div>
<div class="jss357">
<div class="jss376 jss393">
<div tabindex="0" class="jss370" data-testid="filter-box-outer-ref">
<fieldset class="MuiFormControl-root">
<div class="MuiFormGroup-root" data-testid="filter-box-group--4">
<div style="position: relative; height: 190px; width: 206.412px; overflow: auto; will-change: auto; direction: ltr;">
<div tabindex="0" data-testid="filter-box-inner-ref" style="height: 260px; width: 100%; outline: none;">
<span class="jss377" title="-" data-testid="filter--4-label-818" data-index="0" data-focused="false" data-filter-key="-4" data-filter-value="818" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 0px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-818"Onclick="location.href='/product/productlist?c=110&s=111&p=100'">110</span></span>
<span class="jss377" title="*" data-testid="filter--4-label-0" data-index="1" data-focused="false" data-filter-key="-4" data-filter-value="0" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 20px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-0" Onclick="location.href='/product/productlist?c=120&s=121&p=100'">120</span></span>
<span class="jss377" title="0603" data-testid="filter--4-label-91606" data-index="2" data-focused="false" data-filter-key="-4" data-filter-value="91606" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 40px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-91606"Onclick="location.href='/product/productlist?c=100&s=110&p=100'">130</span></span>
<span class="jss377" title="0805" data-testid="filter--4-label-91607" data-index="3" data-focused="false" data-filter-key="-4" data-filter-value="91607" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 60px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-91607">-</span></span>
<span class="jss377" title="1101F" data-testid="filter--4-label-16840" data-index="4" data-focused="false" data-filter-key="-4" data-filter-value="16840" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 80px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-16840">-</span></span>
<span class="jss377" title="1101W" data-testid="filter--4-label-16841" data-index="5" data-focused="false" data-filter-key="-4" data-filter-value="16841" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 100px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-16841">-</span></span>
</div></div></div></fieldset></div>

</div></div></div></div>
<div class="MuiGrid-root MuiGrid-item jss363">
<div class="jss356">
<div class="jss358">지향각</div>
<div class="jss357">
<div tabindex="0" class="jss370" data-testid="filter-box-outer-ref">
<fieldset class="MuiFormControl-root">
<div class="MuiFormGroup-root" data-testid="filter-box-group--5">
<div style="position: relative; height: 228px; width: 158.494px; overflow: auto; will-change: auto; direction: ltr;">
<div tabindex="0" data-testid="filter-box-inner-ref" style="height: 260px; width: 100%; outline: none;">
<span class="jss377" title="-" data-testid="filter--5-label-8" data-index="0" data-focused="false" data-filter-key="-5" data-filter-value="8" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 0px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-8">-</span></span>
<span class="jss377" title="Digi-Reel®" data-testid="filter--5-label-243" data-index="1" data-focused="false" data-filter-key="-5" data-filter-value="243" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 20px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-243">-</span></span>
<span class="jss377" title="박스" data-testid="filter--5-label-61" data-index="2" data-focused="false" data-filter-key="-5" data-filter-value="61" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 40px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-61">-</span></span>
<span class="jss377" title="백" data-testid="filter--5-label-62" data-index="3" data-focused="false" data-filter-key="-5" data-filter-value="62" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 60px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-62">-</span></span>
<span class="jss377" title="벌크" data-testid="filter--5-label-3" data-index="4" data-focused="false" data-filter-key="-5" data-filter-value="3" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 80px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-3">-</span></span>
<span class="jss377" title="소매용 포장" data-testid="filter--5-label-804" data-index="5" data-focused="false" data-filter-key="-5" data-filter-value="804" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 100px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-804">-</span></span>
</div></div></div></fieldset></div></div></div></div>

<div class="MuiGrid-root MuiGrid-item jss363">
<div class="jss356">
<div class="jss358">패키지</div>
<div class="jss357">
<div tabindex="0" class="jss370" data-testid="filter-box-outer-ref">
<fieldset class="MuiFormControl-root">
<div class="MuiFormGroup-root" data-testid="filter-box-group--5">
<div style="position: relative; height: 228px; width: 158.494px; overflow: auto; will-change: auto; direction: ltr;">
<div tabindex="0" data-testid="filter-box-inner-ref" style="height: 260px; width: 100%; outline: none;">
<span class="jss377" title="-" data-testid="filter--5-label-8" data-index="0" data-focused="false" data-filter-key="-5" data-filter-value="8" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 0px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-8">-</span></span>
<span class="jss377" title="Digi-Reel®" data-testid="filter--5-label-243" data-index="1" data-focused="false" data-filter-key="-5" data-filter-value="243" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 20px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-243">Digi-Reel®</span></span>
<span class="jss377" title="박스" data-testid="filter--5-label-61" data-index="2" data-focused="false" data-filter-key="-5" data-filter-value="61" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 40px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-61">박스</span></span>
<span class="jss377" title="백" data-testid="filter--5-label-62" data-index="3" data-focused="false" data-filter-key="-5" data-filter-value="62" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 60px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-62">백</span></span>
<span class="jss377" title="벌크" data-testid="filter--5-label-3" data-index="4" data-focused="false" data-filter-key="-5" data-filter-value="3" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 80px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-3">벌크</span></span>
<span class="jss377" title="소매용 포장" data-testid="filter--5-label-804" data-index="5" data-focused="false" data-filter-key="-5" data-filter-value="804" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 100px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-804">소매용 포장</span></span>
</div></div></div></fieldset></div></div></div></div>
</div>
</div>
</section>
        
        
        
        <!-- 네비게이션 추가  필요-->
       
<%--        <section id="container">
       	<div id="container_box">
       		<aside id="aside">
       		<%@ include file="include/aside.jsp" %>
       		</aside>
       	</div>
       </section> --%>
       <section id="content">
       
		<ul>
		 <c:forEach items="${productlist}" var="productlist">
 		<li>
  			<div class="productThumb">
   			<img src="${productlist.productThumbImg}">
  			</div> 
  			<div class="productName">
   			<a href="/product/view?n=${productlist.productId}">${productlist.productName}</a>
  			</div>
 		</li>
 		</c:forEach>
		</ul>
		</section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container">
            <p class="m-0 text-center text-white">Addr.(54852)Rm 407 Jeonju Innovation Startup Hub 67 Yusang-ro Deokjin-gu Jeonju-si Jeollabuk-do Korea</p>
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/resources/js/scripts.js"></script>
    </body>
</html>