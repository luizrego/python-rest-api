import pytest

import app as a

def test_sum():
    rv = a.sum_number()
    assert rv == 2, "test_sum() failed!"