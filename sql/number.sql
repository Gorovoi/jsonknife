SELECT jsonknife_extract_number('{"a": 1}', '[["a"]]', 'min') + 0.1;
SELECT jsonknife_extract_number('{"a": 1}', '[["a"]]', 'max') + 0.1;
SELECT jsonknife_extract_number('{"a": [1.1, 2, 3, 4]}', '[["a"]]', 'min') + 0.1;
SELECT jsonknife_extract_number('{"a": [1.1, 2, 3, 4.1]}', '[["a"]]', 'max') + 0.1;
SELECT jsonknife_extract_number('{"a":{"b": {"c": 5.3}}}', '[["a","b","c"]]', 'min') + 0.1;
SELECT jsonknife_extract_number('{"a":{"b": {"c": 5}}}', '[["a","b","c"]]', 'min') + 1;
SELECT jsonknife_extract_number('{"a": {"b": 1, "c": 2}', '[["a", "b"], ["a", "c"]]', 'min') + 0.1;
SELECT jsonknife_extract_number('{"a": {"b": 1, "c": 2}', '[["a", "b"], ["a", "c"]]', 'max') + 0.1;
SELECT jsonknife_extract_number('{"a": [{"b": "key1", "c": 1},{"b": "key1", "c": 2}]', '[["a", {"b": "key1"}, "c"]]', 'min') + 0.1;
SELECT jsonknife_extract_number('{"a": [{"b": "key1", "c": 1},{"b": "key1", "c": 2}]', '[["a", {"b": "key1"}, "c"]]', 'max') + 0.1;
SELECT jsonknife_extract_number('{"a": [{"b": "key1", "c": 1},{"b": "key2", "c": 2}]', '[["a", {"b": "key1"}, "c"], ["a", {"b": "key2"}, "c"]]', 'min') + 0.1;
SELECT jsonknife_extract_number('{"a": [{"b": "key1", "c": 1},{"b": "key2", "c": 2}]', '[["a", {"b": "key1"}, "c"], ["a", {"b": "key2"}, "c"]]', 'max') + 0.1;
SELECT jsonknife_extract_number('{"e":[-1,01,2,3,4,5,6,7,8],"a": [{"b": "key1", "c": 1},{"b": "key2", "c": 2}]', '[["a", {"b": "key1"}, "c"], ["a", {"b": "key2"}, "c"],["e"]]', 'min') + 0.1;
SELECT jsonknife_extract_number('{"e":[-1,01,2,3,4,5,6,7,8],"a": [{"b": "key1", "c": 1},{"b": "key2", "c": 2}]', '[["a", {"b": "key1"}, "c"], ["a", {"b": "key1"}, "c"],["e"]]', 'max') + 0.1;
SELECT jsonknife_extract_number('{"a":{"b": {"c": "ups"}}}', [["a","b","c"]], 'min');
