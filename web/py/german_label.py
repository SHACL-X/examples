def validate_german_label(this):
    results = []
    p = py_tf.namedNode("http://example.org/ns#germanLabel")
    s = _data.find(this, p, None)

    while (t := s.next()) != None:
        object = t.getObject()
        if not object.isLiteral() or not object.getLanguage().startswith("de"):
            results.append({
                "value": object
            })

    return results