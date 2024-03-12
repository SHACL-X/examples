function hasMaxLength($value, $maxLength) {
    if ($value.isLiteral()) {
        return $value.getLex().length <= $maxLength.getLex();
    } else if ($value.isURI()) {
        return $value.getUri().length <= $maxLength.getLex();
    } else { // Blank node
        return false;
    }
}