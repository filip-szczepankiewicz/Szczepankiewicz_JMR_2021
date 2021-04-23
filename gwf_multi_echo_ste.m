function [gwf, rf, dt] = ctc_wf_multi_echo_ste

gwf = [
0.00000  0.00000  0.00000
 0.00000  0.00000 -0.00000
-0.00000  0.00000 -0.00000
 0.90730 -0.31819 -0.28472
 0.91397 -0.30624 -0.27635
 0.92746 -0.27983 -0.25886
 0.94852 -0.23200 -0.22800
 0.97646 -0.14827 -0.17335
 0.66684 -0.14608  0.14902
 0.19540 -0.19298  0.59056
-0.21145 -0.21111  0.95720
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.05360  0.27913  0.96162
-0.11040  0.38987  0.91723
-0.24140  0.45960  0.85790
-0.33847  0.49776  0.80198
-0.41399  0.51747  0.75255
-0.48001  0.52682  0.70537
-0.54711  0.52982  0.65227
-0.62777  0.52757  0.57713
-0.73637  0.51407  0.44608
-0.86246  0.46031  0.22311
-0.94757  0.32097 -0.06773
-0.93120  0.05956 -0.36718
-0.65918 -0.49474 -0.57116
 0.34357 -0.94198  0.01164
 0.32241 -0.93362 -0.17292
 0.31299 -0.90921 -0.28437
 0.30768 -0.88541 -0.35620
 0.30126 -0.86533 -0.40736
 0.29107 -0.84876 -0.44765
 0.27506 -0.83469 -0.48284
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.23138 -0.62440 -0.74973
 0.22057 -0.60609 -0.76779
 0.20214 -0.58568 -0.78843
 0.17384 -0.56106 -0.81271
 0.13088 -0.52923 -0.84160
 0.06169 -0.48649 -0.87465
-0.19634 -0.40654 -0.65772
-0.60784 -0.28702 -0.18270
-0.96008 -0.13776  0.25450
-0.91946  0.13682  0.37599
-0.84350  0.33614  0.42546
-0.76560  0.47286  0.44243
-0.69444  0.57025  0.44504
-0.62747  0.64722  0.43919
-0.55817  0.71655  0.42485
-0.47676  0.78754  0.39746
-0.36672  0.86716  0.34503
-0.20151  0.95197  0.24216
 0.02454  1.00000  0.06998
 0.24582  0.96430 -0.12330
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.00000  0.00000  0.00000
 0.58071  0.52273 -0.62851
 0.96077  0.05008 -0.28267
 0.94951 -0.03145 -0.32085
 0.93891 -0.07860 -0.34317
 0.93195 -0.10553 -0.35473
 0.92896 -0.11832 -0.35853
-0.00000 -0.00000 -0.00000
 0.00000  0.00000  0.00000
-0.00000 -0.00000  0.00000
 0.00000  0.00000  0.00000
];

rf = ones(length(gwf),1);
rf([14:37 62:end]) = -1;
dt = 1e-3;

gwf = gwf.*rf * 0.08;
