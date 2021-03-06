% Copyright 2017 Google Inc.
%
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
%
%      http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.

function [params, metrics] = GehlerShiThumbHyperparams(params)
% The hyperparameters for this project, produced using Tune(). See
% ../DefaultHyperparams.m for documentation.
% Tuning started at 2017-06-04, 21:21:00:326.

params.HYPERPARAMS = struct( ...
'VONMISES_MULTIPLIER', 2^1.75, ...
'CROSSENT_MULTIPLIER', 2^-8.25, ...
'FILTER_MULTIPLIERS', [2^-26.25, 2^-23.5], ...
'BIAS_MULTIPLIER', 2^-23, ...
'FILTER_SHIFTS', [2^-60, 2^-71.75], ...
'BIAS_SHIFT', 2^-93, ...
'VON_MISES_DIAGONAL_EPS', 2^0 ...
);

metrics = struct( ...
'rgb_err', ...
  struct( ...
    'mean', 1.97937, ...
    'mean2', 3.10799, ...
    'mean4', 5.67572, ...
    'median', 1.04998, ...
    'tri', 1.31196, ...
    'b25', 0.299816, ...
    'w25', 5.10577, ...
    'w05', 9.82793, ...
    'max', 22.3019 ...
)    , ...
'uv_err', ...
  struct( ...
    'mean', 2.60075, ...
    'mean2', 3.97446, ...
    'mean4', 6.96266, ...
    'median', 1.46387, ...
    'tri', 1.7855, ...
    'b25', 0.424012, ...
    'w25', 6.58532, ...
    'w05', 12.4121, ...
    'max', 26.509 ...
)    , ...
'vonmises_nll', ...
  struct( ...
    'mean', 2.46546, ...
    'mean2', 4.85823, ...
    'mean4', 12.9867, ...
    'median', 1.34521, ...
    'tri', 1.47379, ...
    'b25', 0.383531, ...
    'w25', 6.62072, ...
    'w05', 16.1881, ...
    'max', 59.595 ...
)    , ...
'uv_bin_bias', [-0.0625834, 0.104119], ...
'final_losses', [1633.71, 1579.16, 1558.36], ...
'train_times', [441.902, 555.526, 557.004], ...
'min_feature_time', 0.001454, ...
'min_filter_time', 0.000705, ...
'median_feature_time', 0.00281, ...
'median_filter_time', 0.00567, ...
'opt_traces', ...
  {{[10.355, 6.93494, 6.54391, 6.12853, 6.01859, 5.99833, 5.99339, 5.99208, 5.99138, 5.99124, 5.99122, 5.99121, 5.99121, 5.99121, 5.99121, 5.99121, 5.99121], [10.3003, 6.75403, 6.38326, 5.98085, 5.86534, 5.84222, 5.83685, 5.83565, 5.83493, 5.83487, 5.83484, 5.83484, 5.83484, 5.83484, 5.83484, 5.83484, 5.83484], [10.3823, 6.8884, 6.48034, 6.0918, 5.93384, 5.90453, 5.89716, 5.89555, 5.89451, 5.89442, 5.89439, 5.89439, 5.89439, 5.89439, 5.89439, 5.89439, 5.89439]; ...
    [4636.61, 3968.1, 3718.88, 3452.35, 3248.42, 3021.79, 2864.61, 2739, 2641.55, 2524.87, 2455.73, 2407.75, 2361.13, 2300.61, 2263.63, 2226.82, 2200.4, 2179.47, 2138.42, 2113.48, 2078.3, 2063.07, 2037.71, 2001.24, 1981.58, 1956.46, 1943.64, 1920.59, 1896.47, 1874.82, 1857.86, 1843.89, 1829.28, 1816.32, 1799.94, 1781.33, 1769.66, 1752.16, 1746.48, 1738.05, 1732.37, 1722.96, 1711.41, 1703.56, 1697.09, 1692.85, 1687.72, 1681.43, 1677.46, 1671.86, 1666.89, 1664.13, 1659.37, 1656.3, 1654.02, 1652.53, 1650.96, 1648.28, 1645.22, 1643.84, 1641.21, 1640.04, 1638.58, 1636.6, 1633.71], [4556.85, 3964.74, 3717.6, 3401.27, 3223.43, 2985.57, 2785.12, 2654.01, 2505.18, 2417.67, 2374.81, 2334.69, 2270.4, 2226.69, 2194.43, 2172.17, 2143.45, 2103.6, 2065.91, 2037.76, 2009.95, 1960.2, 1929.43, 1903.63, 1881.27, 1864.79, 1842.81, 1829.29, 1807.65, 1786.73, 1770.95, 1758.98, 1747.85, 1735.67, 1720.43, 1707.13, 1700.46, 1691.01, 1684.66, 1673.77, 1664.25, 1656.24, 1650.04, 1644.32, 1635.87, 1628.37, 1621.39, 1617.04, 1613.6, 1609.76, 1606.63, 1604.2, 1601.13, 1598.09, 1594.77, 1592.54, 1590.56, 1588.77, 1587.25, 1585.38, 1583.97, 1583.02, 1581.44, 1580.16, 1579.16], [4664.9, 4048, 3767.86, 3576.41, 3320.91, 3019.75, 2819.16, 2599.43, 2519.08, 2426.01, 2396.01, 2352.67, 2319.07, 2264.91, 2244.66, 2210.03, 2175.05, 2145.19, 2118.64, 2091.26, 2050.5, 2001.09, 1943.56, 1922.16, 1905.1, 1878.09, 1847.72, 1821.13, 1796.04, 1779.66, 1768.28, 1758.92, 1745.52, 1730, 1711.51, 1695.2, 1683.91, 1674.82, 1661.66, 1652.52, 1643.08, 1636.03, 1630.02, 1622.81, 1617.22, 1613.02, 1609.32, 1604.59, 1600.27, 1595.91, 1592.63, 1588.91, 1584.08, 1580.63, 1578.17, 1575.53, 1572.99, 1570.93, 1568.7, 1566.68, 1564.31, 1562.55, 1560.9, 1559.49, 1558.36]}} ...
);

% Tuning error = 1.330788
% i_pass = 1, i_var = 1, i_mult = 1
% Hyperparams written at 2017-06-04, 21:47:38:083
