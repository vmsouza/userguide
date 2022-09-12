{assign var=uniqueid value=microtime()}
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta property="og:site_name" content="{$smarty.const.APP_SITE_NAME}">
	<meta property="og:title" content="{$smarty.const.APP_NAME}" />
	<meta property="og:description" content="{$pgtitle}" />
	<meta property="og:type" content="website" />
	<meta property="og:updated_time" content="1440432930" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>{$smarty.const.APP_NAME}</title>
	<link rel="shortcut icon" href="assets/images/favicon.png?id={$uniqueid}" type="image/x-icon">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css?id={$uniqueid}">
	<link rel="stylesheet" href="assets/css/plugin.css?id={$uniqueid}">
	<link rel="stylesheet" href="assets/css/flaticon.css?id={$uniqueid}">
        <link rel="stylesheet" href="assets/css/mdi.css?id={$uniqueid}">

	<link rel="stylesheet" href="assets/css/style.css?id={$uniqueid}">
	<link rel="stylesheet" href="assets/css/responsive.css?id={$uniqueid}">
</head>
