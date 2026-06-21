function validateSlug(request, response, next) {
    const rawSlug = request.params.slug;

    if (rawSlug == null) {
        return response.status(400).json({
            error: "Richiesta non valida",
            message: "Slug mancante"
        });
    }

    if (typeof rawSlug !== "string") {
        return response.status(400).json({
            error: "Richiesta non valida",
            message: "Slug non valido"
        });
    }

    const slug = rawSlug.trim();

    if (!slug) {
        return response.status(400).json({
            error: "Richiesta non valida",
            message: "Slug vuoto"
        });
    }

    if (!/^[a-z0-9]+(?:-[a-z0-9]+)*$/i.test(slug)) {
        return response.status(400).json({
            error: "Richiesta non valida",
            message: "Formato slug non valido"
        });
    }

    request.params.slug = slug;
    next();
}

export default validateSlug;