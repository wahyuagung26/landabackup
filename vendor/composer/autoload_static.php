<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit796820e899e52b00fc7b9f32eba26f06
{
    public static $prefixLengthsPsr4 = array (
        'I' => 
        array (
            'Ifsnop\\' => 7,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Ifsnop\\' => 
        array (
            0 => __DIR__ . '/..' . '/ifsnop/mysqldump-php/src/Ifsnop',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit796820e899e52b00fc7b9f32eba26f06::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit796820e899e52b00fc7b9f32eba26f06::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
