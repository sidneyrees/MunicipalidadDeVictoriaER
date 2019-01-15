<?php
$baseDir = dirname(dirname(__FILE__));
return [
    'plugins' => [
        'Authenticate' => $baseDir . '/vendor/crabstudio/authenticate/',
        'Bake' => $baseDir . '/vendor/cakephp/bake//////',
        'DebugKit' => $baseDir . '/vendor/cakephp/debug_kit//////',
        'Migrations' => $baseDir . '/vendor/cakephp/migrations////',
        'Search' => $baseDir . '/vendor/friendsofcake/search//',
        'TinyAuth' => $baseDir . '/vendor/dereuromark/cakephp-tinyauth///',
        'WyriHaximus/MinifyHtml' => $baseDir . '/vendor/wyrihaximus/minify-html/////',
        'WyriHaximus/TwigView' => $baseDir . '/vendor/wyrihaximus/twig-view//////'
    ]
];