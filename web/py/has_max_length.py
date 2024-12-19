def has_max_length(_value, _maxLength):
    if _value.isLiteral():
        return len(_value.getLex()) <= int(_maxLength.getLex())
    elif _value.isURI():
        return len(_value.getUri()) <= int(_maxLength.getLex())
    else:
        return False