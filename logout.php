<?php
// ==========================================
// Date Created:   3/26/2022
// Developer: Richard Rodgers
// ==========================================
session_start();
session_destroy();
header('Location: login');
