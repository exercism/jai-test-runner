run_tests :: () {
    year_not_divisible_by_4_in_common_year();
    skip(year_divisible_by_2_not_divisible_by_4_in_common_year());
    skip(year_divisible_by_4_not_divisible_by_100_in_leap_year());
}

year_not_divisible_by_4_in_common_year :: () {
    assert_equal(false, is_leap_year(2015));
}

year_divisible_by_2_not_divisible_by_4_in_common_year :: () {
    assert_equal(false, is_leap_year(1970));
}

year_divisible_by_4_not_divisible_by_100_in_leap_year :: () {
    assert_equal(true, is_leap_year(1996));
}

#run {
    before_running_tests();
    run_tests();
    after_running_tests();
}

#load "solution.jai";
#load "extest.jai";
