import pytest
from app.calculos import soma

def test_soma_positivos():
    """
    Testa soma de números positivos.
    """
    assert soma(2, 3) == 5

def test_soma_negativos():
    """
    Testa soma de números negativos.
    """
    assert soma(-1, -4) == -5

def test_soma_zero():
    """
    Testa soma envolvendo zero.
    """
    assert soma(0, 5) == 5
    assert soma(0, 0) == 0
