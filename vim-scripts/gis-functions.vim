function! Convert2GeoJSON()
    let line = getline(".")
    let json = json_decode(line)

    let properties = deepcopy(json)
    unlet properties['lat']
    unlet properties['lon']

    let point = {'type': 'Feature'}
    let point['properties']=properties
    let point['geometry']={'type': 'Point', 'coordinates': [json['lon'], json['lat']]}

    "let geoJSON = {'type':'FeatureCollections'}
    "let geoJSON = {}
    "let geoJSON['features']=[point]
    call setline('.', json_encode(point))
endfunction

function! ExtractCoordinates ()
    let line = getline(".")
    let json = json_decode(line)

    call setline('.', '[' . string(json['lon']) . ',' . string(json['lat']) .']')
endfunction

" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
