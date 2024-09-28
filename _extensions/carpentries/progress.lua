PANDOC_VERSION:must_be_at_least '2.11'

function get_progress(meta)
    local progress = 0
    if meta.episode ~= nil then
        progress = math.floor(pandoc.utils.stringify(meta.episode) / pandoc.utils.stringify(meta.episodes) * 100 + 0.5)
    end
    meta.progress = pandoc.MetaString(progress)
    return meta
end

return { { Meta = get_progress } }
