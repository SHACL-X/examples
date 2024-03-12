function validateGermanLabel($this) {
    let results = [];
    let p = TermFactory.namedNode("http://example.org/ns#germanLabel");
    let s = $data.find($this, p, null);
    for (let t = s.next(); t; t = s.next()) {
        let object = t.getObject();
        if (!object.isLiteral() || !object.getLanguage().startsWith("de")) {
            results.push({
                value: object
            });
        }
    }
    return results;
}