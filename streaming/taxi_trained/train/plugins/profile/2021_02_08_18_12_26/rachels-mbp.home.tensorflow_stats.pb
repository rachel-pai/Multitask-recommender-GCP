"��
BHostIDLE"IDLE1    �	AA    �	Aa��[FX]�?i��[FX]�?�Unknown
�HostOptimizeDataset")retrieval_17/streaming_17/OptimizeDataset(1    ���@9    ���@A    ���@I    ���@a�UmZb�?iO��}��?�Unknown
�HostReadVariableOp"Xsequential_119/user_model_24/sequential_117/embedding_79/embedding_lookup/ReadVariableOp(1     ~@9     ~@A     ~@I     ~@a�����S?i)��e��?�Unknown
�HostReadVariableOp"Xsequential_119/user_model_24/sequential_118/embedding_80/embedding_lookup/ReadVariableOp(1     �{@9     �{@A     �{@I     �{@az�[�?R?i��oI���?�Unknown
eHost
LogicalAnd"
LogicalAnd(1     Pz@9     Pz@A     Pz@I     Pz@af@CWQ?i
Z�0��?�Unknown�
iHostWriteSummary"WriteSummary(1      v@9      v@A      v@I      v@ak����L?i��p��?�Unknown�
uHostFlushSummaryWriter"FlushSummaryWriter(1     �u@9     �u@A     �u@I     �u@a3mמ�L?i�ʹ����?�Unknown�
�HostDataset"UIterator::Model::Prefetch::ShuffleAndRepeat::Prefetch::Map::BatchV2::ShuffleAndRepeat( 1     �r@9     �"@A     @i@I     @@a�e~>ӣ@?i'j����?�Unknown
d	HostDataset"Iterator::Model(1      k@9      k@A     �h@I     �h@a\;�xO@?i�������?�Unknown
Z
HostTopKV2"TopKV2(1     `g@9     `W@A     `g@I     `W@a��Y� �>?i��ڱ���?�Unknown
�HostDataset"+Iterator::Model::Prefetch::ShuffleAndRepeat(1     �f@9     �f@A     @e@I     @e@a�":� <?i,}��,��?�Unknown
�HostStaticRegexReplace"Wsequential_122/article_model_12/sequential_121/text_vectorization_10/StaticRegexReplace(1     �b@9     �R@A     �b@I     �R@aeN�b8?i���59��?�Unknown
�HostDataset"yIterator::Model::Prefetch::ShuffleAndRepeat::Prefetch::Map::BatchV2::ShuffleAndRepeat::LegacyParallelInterleaveV2[0]::CSV( 1     �_@9     �@A     �_@I     �@aa���i�4?iH����?�Unknown
�HostDataset"qIterator::Model::Prefetch::ShuffleAndRepeat::Prefetch::Map::BatchV2::ShuffleAndRepeat::LegacyParallelInterleaveV2(1     �X@9�G�z�@A     �X@I�G�z�@a\;�xO0?i�S#����?�Unknown
^HostGatherV2"GatherV2(1     �P@9     �@@A     �P@I     �@@a���K�%?i���<��?�Unknown
�HostSoftmaxCrossEntropyWithLogits"Gretrieval_17/categorical_crossentropy/softmax_cross_entropy_with_logits(1     �P@9     �P@A     �P@I     �P@a���K�%?i�S�����?�Unknown
�HostStringLower"Psequential_122/article_model_12/sequential_121/text_vectorization_10/StringLower(1      M@9      =@A      M@I      =@a;�!�x#?i	�-c���?�Unknown
�HostLookupTableFindV2"esequential_119/user_model_24/sequential_117/string_lookup_79/None_lookup_table_find/LookupTableFindV2(1     �E@9     �E@A     �E@I     �E@aEM�[V?i�#���?�Unknown
�HostMax"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max(1      C@9      3@A      C@I      3@a���t�
?i�ʡlu��?�Unknown
�HostResourceGather"Lsequential_122/article_model_12/sequential_120/embedding_81/embedding_lookup(1     �B@9     �2@A     �B@I     �2@aeN�b?i©�}8��?�Unknown
lHostIteratorGetNext"IteratorGetNext(1     �@@9     �@@A     �@@I     �@@a���K�?i�i�w���?�Unknown
�HostLookupTableFindV2"hsequential_122/article_model_12/sequential_120/string_lookup_81/None_lookup_table_find/LookupTableFindV2(1     �@@9     �0@A     �@@I     �0@a���K�?i�)Ur���?�Unknown
yHost_FusedMatMul"sequential_122/dense_39/BiasAdd(1      @@9      0@A      @@I      0@a��
�?iG"'=��?�Unknown
�HostReadVariableOp".sequential_122/dense_39/BiasAdd/ReadVariableOp(1      ?@9      /@A      ?@I      /@a�Of�m?i�R!����?�Unknown
�HostStringSplitV2"^sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/StringSplitV2(1      >@9      .@A      >@I      .@a`��-�?i����~��?�Unknown
�HostBincount"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount(1      =@9      -@A      =@I      -@a;�!�x?i�\V���?�Unknown
�HostStridedSlice"^sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/strided_slice(1      <@9      ,@A      <@I      ,@aP);�s?i6xA���?�Unknown
�HostLookupTableFindV2"~sequential_122/article_model_12/sequential_121/text_vectorization_10/string_lookup_82/None_lookup_table_find/LookupTableFindV2(1      9@9      )@A      9@I      )@a�P@�y?i��/��?�Unknown
nHostDataset"Iterator::Model::Prefetch(1      2@9      2@A      2@I      2@a@��j�?i��P���?�Unknown
pHostReadVariableOp"range/ReadVariableOp(1      1@9      1@A      1@I      1@a�N�� h?i�S����?�Unknown
vHostInTopKV2" retrieval_17/in_top_k_2/InTopKV2(1      1@9      1@A      1@I      1@a�N�� h?i�KU4A��?�Unknown
y Host_FusedMatMul"sequential_119/dense_38/BiasAdd(1      1@9      1@A      1@I      1@a�N�� h?i{�WԚ��?�Unknown
�!HostMul"Nsequential_122/article_model_12/sequential_121/global_average_pooling1d_11/mul(1      1@9      !@A      1@I      !@a�N�� h?ih�Yt���?�Unknown
�"HostRaggedTensorToTensor"hsequential_122/article_model_12/sequential_121/text_vectorization_10/RaggedToTensor/RaggedTensorToTensor(1      0@9       @A      0@I       @a��
�?i�O��H��?�Unknown
�#HostMatMul",gradient_tape/sequential_122/dense_39/MatMul(1      .@9      .@A      .@I      .@a`��-�?i�m���?�Unknown
|$HostConcatV2"&sequential_122/article_model_12/concat(1      .@9      @A      .@I      @a`��-�?ic�#����?�Unknown
�%HostRealDiv"Rsequential_122/article_model_12/sequential_121/global_average_pooling1d_11/truediv(1      ,@9      @A      ,@I      @aP);�s?i�4�0��?�Unknown
�&HostStridedSlice"hgradient_tape/sequential_122/article_model_12/sequential_120/embedding_81/embedding_lookup/strided_slice(1      *@9      *@A      *@I      *@a˥8�Z"?i�ɟPu��?�Unknown
�'HostVariableShape"hgradient_tape/sequential_122/article_model_12/sequential_121/embedding_82/embedding_lookup/VariableShape(1      *@9      *@A      *@I      *@a˥8�Z"?i��
ڹ��?�Unknown
|(Host
MapDataset"$retrieval_17/streaming_17/MapDataset(1      *@9      *@A      *@I      *@a˥8�Z"?i�vc���?�Unknown
�)HostLookupTableFindV2"esequential_119/user_model_24/sequential_118/string_lookup_80/None_lookup_table_find/LookupTableFindV2(1      *@9      *@A      *@I      *@a˥8�Z"?i�8��B��?�Unknown
�*HostResourceGather"Lsequential_122/article_model_12/sequential_121/embedding_82/embedding_lookup(1      *@9      @A      *@I      @a˥8�Z"?iw]Lv���?�Unknown
�+HostResourceApplyAdagradV2"/Adagrad/Adagrad/update_3/ResourceApplyAdagradV2(1      (@9      (@A      (@I      (@a �����>i������?�Unknown
t,HostAssignAddVariableOp"AssignAddVariableOp(1      (@9      @A      (@I      @a �����>i�����?�Unknown
�-HostDataset"5Iterator::Model::Prefetch::ShuffleAndRepeat::Prefetch(1      (@9      (@A      (@I      (@a �����>i�t�AE��?�Unknown
Z.HostMatMul"MatMul(1      (@9      (@A      (@I      (@a �����>i��a����?�Unknown
�/HostResourceSparseApplyAdagradV2"5Adagrad/Adagrad/update_1/ResourceSparseApplyAdagradV2(1      &@9      &@A      &@I      &@ak�����>iTg�����?�Unknown
�0HostMatMul",gradient_tape/sequential_119/dense_38/MatMul(1      &@9      &@A      &@I      &@ak�����>i�������?�Unknown
�1HostStridedSlice"hgradient_tape/sequential_122/article_model_12/sequential_121/embedding_82/embedding_lookup/strided_slice(1      &@9      &@A      &@I      &@ak�����>i��2��?�Unknown
�2HostStridedSlice"`sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/strided_slice_1(1      &@9      @A      &@I      @ak�����>ik'�}l��?�Unknown
�3HostResourceApplyAdagradV2"/Adagrad/Adagrad/update_2/ResourceApplyAdagradV2(1      $@9      $@A      $@I      $@a�M��<\�>i�Y6���?�Unknown
�4HostResourceApplyAdagradV2"/Adagrad/Adagrad/update_6/ResourceApplyAdagradV2(1      $@9      $@A      $@I      $@a�M��<\�>i�������?�Unknown
�5HostSub"1sequential_119/user_model_24/normalization_17/sub(1      $@9      $@A      $@I      $@a�M��<\�>i<�M�
��?�Unknown
�6HostResourceSparseApplyAdagradV2"3Adagrad/Adagrad/update/ResourceSparseApplyAdagradV2(1      "@9      "@A      "@I      "@a@��j��>i�!:��?�Unknown
�7HostVariableShape"hgradient_tape/sequential_122/article_model_12/sequential_120/embedding_81/embedding_lookup/VariableShape(1      "@9      "@A      "@I      "@a@��j��>i���i��?�Unknown
�8HostParallelMapDatasetV2".retrieval_17/streaming_17/ParallelMapDatasetV2(1      "@9      "@A      "@I      "@a@��j��>iġ�����?�Unknown
~9HostStridedSlice"$Adagrad/Adagrad/update/strided_slice(1       @9       @A       @I       @a��
��>i���,���?�Unknown
u:HostTensorSliceDataset"TensorSliceDataset/_1(1       @9       @A       @I       @a��
��>i�&Z���?�Unknown
�;HostMatMul".gradient_tape/sequential_119/dense_38/MatMul_1(1       @9       @A       @I       @a��
��>i\T���?�Unknown
g<HostMatMul"retrieval_17/MatMul(1       @9       @A       @I       @a��
��>i���A��?�Unknown
�=HostRsqrt"2sequential_119/user_model_24/normalization_17/Sqrt(1       @9       @A       @I       @a��
��>i-ذ�k��?�Unknown
�>HostGatherV2"Isequential_119/user_model_24/sequential_118/embedding_80/embedding_lookup(1       @9       @A       @I       @a��
��>iB����?�Unknown
�?HostResourceSparseApplyAdagradV2"5Adagrad/Adagrad/update_4/ResourceSparseApplyAdagradV2(1      @9      @A      @I      @aP);�s�>i��g����?�Unknown
s@HostUnique"Adagrad/Adagrad/update_4/Unique(1      @9      @A      @I      @aP);�s�>i������?�Unknown
�AHostResourceSparseApplyAdagradV2"5Adagrad/Adagrad/update_5/ResourceSparseApplyAdagradV2(1      @9      @A      @I      @aP);�s�>i;yx���?�Unknown
~BHostMatMul"*gradient_tape/retrieval_17/MatMul/MatMul_1(1      @9      @A      @I      @aP);�s�>i�� �)��?�Unknown
vCHostInTopKV2" retrieval_17/in_top_k_3/InTopKV2(1      @9      @A      @I      @aP);�s�>i�e��N��?�Unknown
vDHostInTopKV2" retrieval_17/in_top_k_4/InTopKV2(1      @9      @A      @I      @aP);�s�>i4�|s��?�Unknown
gEHostStridedSlice"strided_slice(1      @9������@A      @I������@aP);�s�>i�R�c���?�Unknown
qFHostUnique"Adagrad/Adagrad/update/Unique(1      @9      @A      @I      @a �����>i}���?�Unknown
�GHostResourceApplyAdagradV2"/Adagrad/Adagrad/update_7/ResourceApplyAdagradV2(1      @9      @A      @I      @a �����>i��_����?�Unknown
mHHostBatchDatasetV2"BatchDatasetV2/_4(1      @9      @A      @I      @a �����>i7^BI���?�Unknown
�IHostConcatV2"agradient_tape/sequential_122/article_model_12/sequential_121/embedding_82/embedding_lookup/concat(1      @9      @A      @I      @a �����>i�%���?�Unknown
�JHostMatMul".gradient_tape/sequential_122/dense_39/MatMul_1(1      @9      @A      @I      @a �����>iW��6��?�Unknown
gKHostArgMax"retrieval_17/ArgMax(1      @9      @A      @I      @a �����>i�i�.V��?�Unknown
�LHostReduceDataset"'retrieval_17/streaming_17/ReduceDataset(1      @9      @A      @I      @a �����>iw��u��?�Unknown
�MHostNotEqual"Dsequential_122/article_model_12/sequential_121/embedding_82/NotEqual(1      @9      @A      @I      @a �����>iǯr���?�Unknown
�NHostCumsum"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum(1      @9      @A      @I      @a �����>i�u����?�Unknown
�OHostStridedSlice"&Adagrad/Adagrad/update_4/strided_slice(1      @9      @A      @I      @a�M��<\�>id\�p���?�Unknown
\PHostConcatV2"concat(1      @9      @A      @I      @a�M��<\�>i1C����?�Unknown
^QHostConcatV2"concat_1(1      @9      @A      @I      @a�M��<\�>i�)I)��?�Unknown
|RHostMatMul"(gradient_tape/retrieval_17/MatMul/MatMul(1      @9      @A      @I      @a�M��<\�>i�����?�Unknown
�SHostBiasAddGrad"9gradient_tape/sequential_119/dense_38/BiasAdd/BiasAddGrad(1      @9      @A      @I      @a�M��<\�>i����8��?�Unknown
�THostConcatV2"agradient_tape/sequential_122/article_model_12/sequential_120/embedding_81/embedding_lookup/concat(1      @9      @A      @I      @a�M��<\�>ie��=S��?�Unknown
�UHostDynamicStitch"fgradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/DynamicStitch(1      @9      @A      @I      @a�M��<\�>i2�<�m��?�Unknown
�VHostRealDiv"hgradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/truediv/RealDiv(1      @9      @A      @I      @a�M��<\�>i��y����?�Unknown
kWHostConcatV2"retrieval_17/concat_1(1      @9      @A      @I      @a�M��<\�>i̒�R���?�Unknown
�XHostAssignVariableOp"*retrieval_17/streaming_17/AssignVariableOp(1      @9      @A      @I      @a�M��<\�>i�y���?�Unknown
�YHostAddV2"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add(1      @9      @A      @I      @a�M��<\�>if`0���?�Unknown
�ZHostConcatV2"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat(1      @9      @A      @I      @a�M��<\�>i3Gmg���?�Unknown
�[HostReadVariableOp"-sequential_122/dense_39/MatMul/ReadVariableOp(1      @9      @A      @I      @a�M��<\�>i .����?�Unknown
s\HostUnique"Adagrad/Adagrad/update_1/Unique(1      @9      @A      @I      @a��
��>iMA� ��?�Unknown
s]HostUnique"Adagrad/Adagrad/update_5/Unique(1      @9      @A      @I      @a��
��>il��5��?�Unknown
g^HostPlaceholder"Placeholder/_0(1      @9      @A      @I      @a��
��>i!�oK��?�Unknown
�_HostSlice"0gradient_tape/sequential_119/user_model_24/Slice(1      @9      @A      @I      @a��
��>i,�`��?�Unknown
�`HostMul"`gradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/mul/Mul(1      @9      @A      @I      @a��
��>i7ɝ4u��?�Unknown
�aHostBiasAddGrad"9gradient_tape/sequential_122/dense_39/BiasAdd/BiasAddGrad(1      @9      @A      @I      @a��
��>iB�4K���?�Unknown
abHostSum"retrieval_17/Sum(1      @9      @A      @I      @a��
��>iM�a���?�Unknown
icHostConcatV2"retrieval_17/concat(1      @9      @A      @I      @a��
��>iX&cx���?�Unknown
ydHostConcatV2"#sequential_119/user_model_24/concat(1      @9      @A      @I      @a��
��>icE�����?�Unknown
�eHostCast"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1(1      @9       @A      @I       @a��
��>ind�����?�Unknown
�fHostGreater"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater(1      @9       @A      @I       @a��
��>iy�(����?�Unknown
�gHostAssignAddVariableOp"#Adagrad/Adagrad/AssignAddVariableOp(1      @9      @A      @I      @a �����>i�����?�Unknown
�hHostUnsortedSegmentSum")Adagrad/Adagrad/update/UnsortedSegmentSum(1      @9      @A      @I      @a �����>i	2^��?�Unknown
�iHostUnsortedSegmentSum"+Adagrad/Adagrad/update_1/UnsortedSegmentSum(1      @9      @A      @I      @a �����>iQ��.#��?�Unknown
zjHostParallelMapDatasetV2"ParallelMapDatasetV2/_18(1      @9      @A      @I      @a �����>i����2��?�Unknown
`kHostDivNoNan"
div_no_nan(1      @9      @A      @I      @a �����>i�7��B��?�Unknown
blHostDivNoNan"div_no_nan_4(1      @9      @A      @I      @a �����>i)�СR��?�Unknown
�mHostSlice"2gradient_tape/sequential_119/user_model_24/Slice_1(1      @9      @A      @I      @a �����>iq��rb��?�Unknown
�nHostSlice"5gradient_tape/sequential_122/article_model_12/Slice_1(1      @9      @A      @I      @a �����>i�=�Cr��?�Unknown
XoHostRange"range(1      @9      @A      @I      @a �����>i�����?�Unknown
�pHostAssignAddVariableOp" retrieval_17/AssignAddVariableOp(1      @9      @A      @I      @a �����>iI����?�Unknown
�qHostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_2(1      @9      @A      @I      @a �����>i�C�����?�Unknown
�rHostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_8(1      @9      @A      @I      @a �����>iٚx����?�Unknown
csHostSum"retrieval_17/Sum_1(1      @9      @A      @I      @a �����>i!�iX���?�Unknown
ctHostSum"retrieval_17/Sum_4(1      @9      @A      @I      @a �����>iiI[)���?�Unknown
�uHostSum"7retrieval_17/categorical_crossentropy/weighted_loss/Sum(1      @9      @A      @I      @a �����>i��L����?�Unknown
avHostMul"retrieval_17/mul(1      @9      @A      @I      @a �����>i��=����?�Unknown
nwHost	ZerosLike"retrieval_17/zeros_like(1      @9      @A      @I      @a �����>iAO/� ��?�Unknown
�xHostReadVariableOp"-sequential_119/dense_38/MatMul/ReadVariableOp(1      @9      @A      @I      @a �����>i�� m��?�Unknown
�yHostReadVariableOp"Dsequential_119/user_model_24/normalization_17/Reshape/ReadVariableOp(1      @9      @A      @I      @a �����>i��> ��?�Unknown
�zHostMul"5sequential_119/user_model_24/normalization_17/truediv(1      @9      @A      @I      @a �����>iU0��?�Unknown
�{HostGatherV2"Isequential_119/user_model_24/sequential_117/embedding_79/embedding_lookup(1      @9      @A      @I      @a �����>ia���?��?�Unknown
�|HostCast"�sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_Cast(1      @9      �?A      @I      �?a �����>i��O��?�Unknown
�}HostCast"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast(1      @9      �?A      @I      �?a �����>i�Zׁ_��?�Unknown
�~HostCast"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast(1      @9      �?A      @I      �?a �����>i9��Ro��?�Unknown
�HostStridedSlice"&Adagrad/Adagrad/update_1/strided_slice(1       @9       @A       @I       @a��
��>i�A�y��?�Unknown
��HostUnsortedSegmentSum"+Adagrad/Adagrad/update_4/UnsortedSegmentSum(1       @9       @A       @I       @a��
��>iC�_i���?�Unknown
��HostUnsortedSegmentSum"+Adagrad/Adagrad/update_5/UnsortedSegmentSum(1       @9       @A       @I       @a��
��>i�`����?�Unknown
��HostStridedSlice"&Adagrad/Adagrad/update_5/strided_slice(1       @9       @A       @I       @a��
��>iM�����?�Unknown
x�HostReadVariableOp"Adagrad/Cast/ReadVariableOp(1       @9       @A       @I       @a��
��>i�B���?�Unknown
g�Host
MapDataset"MapDataset/_13(1       @9       @A       @I       @a��
��>iW�����?�Unknown
]�HostMinimum"Minimum(1       @9      �?A       @I      �?a��
��>iܞ�!���?�Unknown
p�HostReadVariableOp"Read/ReadVariableOp(1       @9       @A       @I       @a��
��>ia.%����?�Unknown
v�HostReadVariableOp"div_no_nan/ReadVariableOp(1       @9       @A       @I       @a��
��>i�p8���?�Unknown
c�HostDivNoNan"div_no_nan_1(1       @9       @A       @I       @a��
��>ikM�����?�Unknown
x�HostReadVariableOp"div_no_nan_4/ReadVariableOp(1       @9       @A       @I       @a��
��>i��O���?�Unknown
��HostSlice"3gradient_tape/sequential_122/article_model_12/Slice(1       @9       @A       @I       @a��
��>iulS����?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_3(1       @9       @A       @I       @a��
��>i���e���?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_4(1       @9       @A       @I       @a��
��>i�����?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_6(1       @9       @A       @I       @a��
��>i6|��?�Unknown
f�HostCast"retrieval_17/Cast_2(1       @9       @A       @I       @a��
��>i�����?�Unknown
f�HostCast"retrieval_17/Cast_4(1       @9       @A       @I       @a��
��>i:͒"��?�Unknown
d�HostSum"retrieval_17/Sum_2(1       @9       @A       @I       @a��
��>i��-��?�Unknown
d�HostSum"retrieval_17/Sum_3(1       @9       @A       @I       @a��
��>iYd�7��?�Unknown
d�HostSum"retrieval_17/Sum_5(1       @9       @A       @I       @a��
��>i��4B��?�Unknown
u�HostInTopKV2"retrieval_17/in_top_k/InTopKV2(1       @9       @A       @I       @a��
��>i"x��L��?�Unknown
w�HostInTopKV2" retrieval_17/in_top_k_1/InTopKV2(1       @9       @A       @I       @a��
��>i�GKW��?�Unknown
��HostModelDataset"&retrieval_17/streaming_17/ModelDataset(1       @9       @A       @I       @a��
��>i,���a��?�Unknown
��HostReadVariableOp".sequential_119/dense_38/BiasAdd/ReadVariableOp(1       @9       @A       @I       @a��
��>i�&�al��?�Unknown
��HostReadVariableOp"Fsequential_119/user_model_24/normalization_17/Reshape_1/ReadVariableOp(1       @9       @A       @I       @a��
��>i6�)�v��?�Unknown
��HostSum"Nsequential_122/article_model_12/sequential_121/global_average_pooling1d_11/Sum(1       @9      �?A       @I      �?a��
��>i�Eux���?�Unknown
��HostSum"Psequential_122/article_model_12/sequential_121/global_average_pooling1d_11/Sum_1(1       @9      �?A       @I      �?a��
��>i@�����?�Unknown
��HostMaximum"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum(1       @9      �?A       @I      �?a��
��>i�d����?�Unknown
��HostMul"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul(1       @9      �?A       @I      �?a��
��>iJ�W���?�Unknown
g�Host
MapDataset"MapDataset/_15(1      �?9      �?A      �?I      �?a��
��>i��_���?�Unknown
x�HostReadVariableOp"div_no_nan/ReadVariableOp_1(1      �?9      �?A      �?I      �?a��
��>iЃ�����?�Unknown
c�HostDivNoNan"div_no_nan_2(1      �?9      �?A      �?I      �?a��
��>i�KI���?�Unknown
x�HostReadVariableOp"div_no_nan_2/ReadVariableOp(1      �?9      �?A      �?I      �?a��
��>iV�0���?�Unknown
z�HostReadVariableOp"div_no_nan_2/ReadVariableOp_1(1      �?9      �?A      �?I      �?a��
��>i۔v���?�Unknown
c�HostDivNoNan"div_no_nan_3(1      �?9      �?A      �?I      �?a��
��>iܢ:����?�Unknown
x�HostReadVariableOp"div_no_nan_3/ReadVariableOp(1      �?9      �?A      �?I      �?a��
��>i�j����?�Unknown
��HostBroadcastTo"dgradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/BroadcastTo(1      �?9      �?A      �?I      �?a��
��>ib2�G���?�Unknown
��HostSum"`gradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/mul/Sum(1      �?9      �?A      �?I      �?a��
��>i%�+����?�Unknown
��HostSum"dgradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/truediv/Sum(1      �?9      �?A      �?I      �?a��
��>i�������?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_1(1      �?9      �?A      �?I      �?a��
��>i��w���?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_5(1      �?9      �?A      �?I      �?a��
��>inQ^���?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_7(1      �?9      �?A      �?I      �?a��
��>i1ã���?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_9(1      �?9      �?A      �?I      �?a��
��>i��h����?�Unknown
d�HostCast"retrieval_17/Cast(1      �?9      �?A      �?I      �?a��
��>i��/���?�Unknown
f�HostCast"retrieval_17/Cast_6(1      �?9      �?A      �?I      �?a��
��>izp�t���?�Unknown
f�HostCast"retrieval_17/Cast_8(1      �?9      �?A      �?I      �?a��
��>i=8Z����?�Unknown
��HostMinimum"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum(1      �?9      �?A      �?I      �?a��
��>i      �?�Unknown
5�HostIdentity"Identity(i      �?�Unknown�
K�HostReadVariableOp"div_no_nan_1/ReadVariableOp(i      �?�Unknown
M�HostReadVariableOp"div_no_nan_1/ReadVariableOp_1(i      �?�Unknown
M�HostReadVariableOp"div_no_nan_3/ReadVariableOp_1(i      �?�Unknown
M�HostReadVariableOp"div_no_nan_4/ReadVariableOp_1(i      �?�Unknown*��
�HostOptimizeDataset")retrieval_17/streaming_17/OptimizeDataset(1    ���@9    ���@A    ���@I    ���@a�Ђ����?i�Ђ����?�Unknown
�HostReadVariableOp"Xsequential_119/user_model_24/sequential_117/embedding_79/embedding_lookup/ReadVariableOp(1     ~@9     ~@A     ~@I     ~@a�=�:�?io2#ͮ��?�Unknown
�HostReadVariableOp"Xsequential_119/user_model_24/sequential_118/embedding_80/embedding_lookup/ReadVariableOp(1     �{@9     �{@A     �{@I     �{@a�kǄP�?iH�^�2b�?�Unknown
eHost
LogicalAnd"
LogicalAnd(1     Pz@9     Pz@A     Pz@I     Pz@a$"��4�?iY����?�Unknown�
iHostWriteSummary"WriteSummary(1      v@9      v@A      v@I      v@ax����?i������?�Unknown�
uHostFlushSummaryWriter"FlushSummaryWriter(1     �u@9     �u@A     �u@I     �u@a��&d�z�?i�	�Ԇ%�?�Unknown�
�HostDataset"UIterator::Model::Prefetch::ShuffleAndRepeat::Prefetch::Map::BatchV2::ShuffleAndRepeat( 1     �r@9     �"@A     @i@I     @@a�W�Y�?iAhAF�v�?�Unknown
dHostDataset"Iterator::Model(1      k@9      k@A     �h@I     �h@ag�|9s�?iGZ'���?�Unknown
Z	HostTopKV2"TopKV2(1     `g@9     `W@A     `g@I     `W@ap(�ւ?ii���?�Unknown
�
HostDataset"+Iterator::Model::Prefetch::ShuffleAndRepeat(1     �f@9     �f@A     @e@I     @e@af�>jS �?i+�pi�V�?�Unknown
�HostStaticRegexReplace"Wsequential_122/article_model_12/sequential_121/text_vectorization_10/StaticRegexReplace(1     �b@9     �R@A     �b@I     �R@a��ӎ��}?i%F�.7��?�Unknown
�HostDataset"yIterator::Model::Prefetch::ShuffleAndRepeat::Prefetch::Map::BatchV2::ShuffleAndRepeat::LegacyParallelInterleaveV2[0]::CSV( 1     �_@9     �@A     �_@I     �@ak��ײ�y?il5>�d��?�Unknown
�HostDataset"qIterator::Model::Prefetch::ShuffleAndRepeat::Prefetch::Map::BatchV2::ShuffleAndRepeat::LegacyParallelInterleaveV2(1     �X@9�G�z�@A     �X@I�G�z�@ag�|9s�s?io.�zI��?�Unknown
^HostGatherV2"GatherV2(1     �P@9     �@@A     �P@I     �@@a5W����j?i�)S��?�Unknown
�HostSoftmaxCrossEntropyWithLogits"Gretrieval_17/categorical_crossentropy/softmax_cross_entropy_with_logits(1     �P@9     �P@A     �P@I     �P@a5W����j?i%��z"�?�Unknown
�HostStringLower"Psequential_122/article_model_12/sequential_121/text_vectorization_10/StringLower(1      M@9      =@A      M@I      =@a|�"�P_g?i�G���9�?�Unknown
�HostLookupTableFindV2"esequential_119/user_model_24/sequential_117/string_lookup_79/None_lookup_table_find/LookupTableFindV2(1     �E@9     �E@A     �E@I     �E@a�z��Sa?iIT��-K�?�Unknown
�HostMax"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max(1      C@9      3@A      C@I      3@a\&
�4�^?i\Y~Z�?�Unknown
�HostResourceGather"Lsequential_122/article_model_12/sequential_120/embedding_81/embedding_lookup(1     �B@9     �2@A     �B@I     �2@a��ӎ��]?iZ�O�fi�?�Unknown
lHostIteratorGetNext"IteratorGetNext(1     �@@9     �@@A     �@@I     �@@a5W����Z?i� ?�v�?�Unknown
�HostLookupTableFindV2"hsequential_122/article_model_12/sequential_120/string_lookup_81/None_lookup_table_find/LookupTableFindV2(1     �@@9     �0@A     �@@I     �0@a5W����Z?i������?�Unknown
yHost_FusedMatMul"sequential_122/dense_39/BiasAdd(1      @@9      0@A      @@I      0@a�-�fG�Y?iI!����?�Unknown
�HostReadVariableOp".sequential_122/dense_39/BiasAdd/ReadVariableOp(1      ?@9      /@A      ?@I      /@aX�+��X?i��:�b��?�Unknown
�HostStringSplitV2"^sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/StringSplitV2(1      >@9      .@A      >@I      .@a��X�-X?i8�{y��?�Unknown
�HostBincount"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount(1      =@9      -@A      =@I      -@a|�"�P_W?i��$)��?�Unknown
�HostStridedSlice"^sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/strided_slice(1      <@9      ,@A      <@I      ,@a��y��V?i՜J�q��?�Unknown
�HostLookupTableFindV2"~sequential_122/article_model_12/sequential_121/text_vectorization_10/string_lookup_82/None_lookup_table_find/LookupTableFindV2(1      9@9      )@A      9@I      )@a�J�&T?i��.����?�Unknown
nHostDataset"Iterator::Model::Prefetch(1      2@9      2@A      2@I      2@aӝS�M?iP�C����?�Unknown
pHostReadVariableOp"range/ReadVariableOp(1      1@9      1@A      1@I      1@a��1��fK?i��:F���?�Unknown
vHostInTopKV2" retrieval_17/in_top_k_2/InTopKV2(1      1@9      1@A      1@I      1@a��1��fK?iB2y��?�Unknown
yHost_FusedMatMul"sequential_119/dense_38/BiasAdd(1      1@9      1@A      1@I      1@a��1��fK?ip�)�R��?�Unknown
� HostMul"Nsequential_122/article_model_12/sequential_121/global_average_pooling1d_11/mul(1      1@9      !@A      1@I      !@a��1��fK?i�� w,��?�Unknown
�!HostRaggedTensorToTensor"hsequential_122/article_model_12/sequential_121/text_vectorization_10/RaggedToTensor/RaggedTensorToTensor(1      0@9       @A      0@I       @a�-�fG�I?i�����?�Unknown
�"HostMatMul",gradient_tape/sequential_122/dense_39/MatMul(1      .@9      .@A      .@I      .@a��X�-H?iR��q���?�Unknown
|#HostConcatV2"&sequential_122/article_model_12/concat(1      .@9      @A      .@I      @a��X�-H?i��rڵ��?�Unknown
�$HostRealDiv"Rsequential_122/article_model_12/sequential_121/global_average_pooling1d_11/truediv(1      ,@9      @A      ,@I      @a��y��F?i�3Z�?�Unknown
�%HostStridedSlice"hgradient_tape/sequential_122/article_model_12/sequential_120/embedding_81/embedding_lookup/strided_slice(1      *@9      *@A      *@I      *@a15�Z�D?i��0�
�?�Unknown
�&HostVariableShape"hgradient_tape/sequential_122/article_model_12/sequential_121/embedding_82/embedding_lookup/VariableShape(1      *@9      *@A      *@I      *@a15�Z�D?i��G��?�Unknown
|'Host
MapDataset"$retrieval_17/streaming_17/MapDataset(1      *@9      *@A      *@I      *@a15�Z�D?i�ӓ]�?�Unknown
�(HostLookupTableFindV2"esequential_119/user_model_24/sequential_118/string_lookup_80/None_lookup_table_find/LookupTableFindV2(1      *@9      *@A      *@I      *@a15�Z�D?i߳tN�?�Unknown
�)HostResourceGather"Lsequential_122/article_model_12/sequential_121/embedding_82/embedding_lookup(1      *@9      @A      *@I      @a15�Z�D?i쓕���?�Unknown
�*HostResourceApplyAdagradV2"/Adagrad/Adagrad/update_3/ResourceApplyAdagradV2(1      (@9      (@A      (@I      (@aU���WC?i���wa$�?�Unknown
t+HostAssignAddVariableOp"AssignAddVariableOp(1      (@9      @A      (@I      @aU���WC?i�\e7)�?�Unknown
�,HostDataset"5Iterator::Model::Prefetch::ShuffleAndRepeat::Prefetch(1      (@9      (@A      (@I      (@aU���WC?i�b�R.�?�Unknown
Z-HostMatMul"MatMul(1      (@9      (@A      (@I      (@aU���WC?iЧ"@�2�?�Unknown
�.HostResourceSparseApplyAdagradV2"5Adagrad/Adagrad/update_1/ResourceSparseApplyAdagradV2(1      &@9      &@A      &@I      &@ax���A?i�QhR7�?�Unknown
�/HostMatMul",gradient_tape/sequential_119/dense_38/MatMul(1      &@9      &@A      &@I      &@ax���A?i�����;�?�Unknown
�0HostStridedSlice"hgradient_tape/sequential_122/article_model_12/sequential_121/embedding_82/embedding_lookup/strided_slice(1      &@9      &@A      &@I      &@ax���A?i|��/@�?�Unknown
�1HostStridedSlice"`sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/strided_slice_1(1      &@9      @A      &@I      @ax���A?i`O9Q�D�?�Unknown
�2HostResourceApplyAdagradV2"/Adagrad/Adagrad/update_2/ResourceApplyAdagradV2(1      $@9      $@A      $@I      $@a�<;�l@?i/^a�H�?�Unknown
�3HostResourceApplyAdagradV2"/Adagrad/Adagrad/update_6/ResourceApplyAdagradV2(1      $@9      $@A      $@I      $@a�<;�l@?i�l���L�?�Unknown
�4HostSub"1sequential_119/user_model_24/normalization_17/sub(1      $@9      $@A      $@I      $@a�<;�l@?i�{�"�P�?�Unknown
�5HostResourceSparseApplyAdagradV2"3Adagrad/Adagrad/update/ResourceSparseApplyAdagradV2(1      "@9      "@A      "@I      "@aӝS�=?i�ﻔUT�?�Unknown
�6HostVariableShape"hgradient_tape/sequential_122/article_model_12/sequential_120/embedding_81/embedding_lookup/VariableShape(1      "@9      "@A      "@I      "@aӝS�=?iAc��W�?�Unknown
�7HostParallelMapDatasetV2".retrieval_17/streaming_17/ParallelMapDatasetV2(1      "@9      "@A      "@I      "@aӝS�=?i���x�[�?�Unknown
~8HostStridedSlice"$Adagrad/Adagrad/update/strided_slice(1       @9       @A       @I       @a�-�fG�9?i�����^�?�Unknown
u9HostTensorSliceDataset"TensorSliceDataset/_1(1       @9       @A       @I       @a�-�fG�9?iG��
	b�?�Unknown
�:HostMatMul".gradient_tape/sequential_119/dense_38/MatMul_1(1       @9       @A       @I       @a�-�fG�9?i�`�SBe�?�Unknown
g;HostMatMul"retrieval_17/MatMul(1       @9       @A       @I       @a�-�fG�9?i�9��{h�?�Unknown
�<HostRsqrt"2sequential_119/user_model_24/normalization_17/Sqrt(1       @9       @A       @I       @a�-�fG�9?i9q�k�?�Unknown
�=HostGatherV2"Isequential_119/user_model_24/sequential_118/embedding_80/embedding_lookup(1       @9       @A       @I       @a�-�fG�9?i��].�n�?�Unknown
�>HostResourceSparseApplyAdagradV2"5Adagrad/Adagrad/update_4/ResourceSparseApplyAdagradV2(1      @9      @A      @I      @a��y��6?ip(-N�q�?�Unknown
s?HostUnique"Adagrad/Adagrad/update_4/Unique(1      @9      @A      @I      @a��y��6?if�m�t�?�Unknown
�@HostResourceSparseApplyAdagradV2"5Adagrad/Adagrad/update_5/ResourceSparseApplyAdagradV2(1      @9      @A      @I      @a��y��6?i��ˍdw�?�Unknown
~AHostMatMul"*gradient_tape/retrieval_17/MatMul/MatMul_1(1      @9      @A      @I      @a��y��6?i#ᚭ6z�?�Unknown
vBHostInTopKV2" retrieval_17/in_top_k_3/InTopKV2(1      @9      @A      @I      @a��y��6?i�j�}�?�Unknown
vCHostInTopKV2" retrieval_17/in_top_k_4/InTopKV2(1      @9      @A      @I      @a��y��6?iE\9���?�Unknown
gDHostStridedSlice"strided_slice(1      @9������@A      @I������@a��y��6?i֙���?�Unknown
qEHostUnique"Adagrad/Adagrad/update/Unique(1      @9      @A      @I      @aU���W3?iR<���?�Unknown
�FHostResourceApplyAdagradV2"/Adagrad/Adagrad/update_7/ResourceApplyAdagradV2(1      @9      @A      @I      @aU���W3?i��k����?�Unknown
mGHostBatchDatasetV2"BatchDatasetV2/_4(1      @9      @A      @I      @aU���W3?iJ����?�Unknown
�HHostConcatV2"agradient_tape/sequential_122/article_model_12/sequential_121/embedding_82/embedding_lookup/concat(1      @9      @A      @I      @aU���W3?i�#��X��?�Unknown
�IHostMatMul".gradient_tape/sequential_122/dense_39/MatMul_1(1      @9      @A      @I      @aU���W3?iBƀ�Î�?�Unknown
gJHostArgMax"retrieval_17/ArgMax(1      @9      @A      @I      @aU���W3?i�h2�.��?�Unknown
�KHostReduceDataset"'retrieval_17/streaming_17/ReduceDataset(1      @9      @A      @I      @aU���W3?i:�˙��?�Unknown
�LHostNotEqual"Dsequential_122/article_model_12/sequential_121/embedding_82/NotEqual(1      @9      @A      @I      @aU���W3?i������?�Unknown
�MHostCumsum"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum(1      @9      @A      @I      @aU���W3?i2PG�o��?�Unknown
�NHostStridedSlice"&Adagrad/Adagrad/update_4/strided_slice(1      @9      @A      @I      @a�<;�l0?i�Wۆs��?�Unknown
\OHostConcatV2"concat(1      @9      @A      @I      @a�<;�l0?i_oTw��?�Unknown
^PHostConcatV2"concat_1(1      @9      @A      @I      @a�<;�l0?ijf"{��?�Unknown
|QHostMatMul"(gradient_tape/retrieval_17/MatMul/MatMul(1      @9      @A      @I      @a�<;�l0?i�m��~��?�Unknown
�RHostBiasAddGrad"9gradient_tape/sequential_119/dense_38/BiasAdd/BiasAddGrad(1      @9      @A      @I      @a�<;�l0?i:u+����?�Unknown
�SHostConcatV2"agradient_tape/sequential_122/article_model_12/sequential_120/embedding_81/embedding_lookup/concat(1      @9      @A      @I      @a�<;�l0?i�|�����?�Unknown
�THostDynamicStitch"fgradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/DynamicStitch(1      @9      @A      @I      @a�<;�l0?i
�SX���?�Unknown
�UHostRealDiv"hgradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/truediv/RealDiv(1      @9      @A      @I      @a�<;�l0?ir��%���?�Unknown
kVHostConcatV2"retrieval_17/concat_1(1      @9      @A      @I      @a�<;�l0?iڒ{��?�Unknown
�WHostAssignVariableOp"*retrieval_17/streaming_17/AssignVariableOp(1      @9      @A      @I      @a�<;�l0?iB�����?�Unknown
�XHostAddV2"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add(1      @9      @A      @I      @a�<;�l0?i�������?�Unknown
�YHostConcatV2"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat(1      @9      @A      @I      @a�<;�l0?i�7\���?�Unknown
�ZHostReadVariableOp"-sequential_122/dense_39/MatMul/ReadVariableOp(1      @9      @A      @I      @a�<;�l0?iz��)���?�Unknown
s[HostUnique"Adagrad/Adagrad/update_1/Unique(1      @9      @A      @I      @a�-�fG�)?i�B�=��?�Unknown
s\HostUnique"Adagrad/Adagrad/update_5/Unique(1      @9      @A      @I      @a�-�fG�)?i ��rڵ�?�Unknown
g]HostPlaceholder"Placeholder/_0(1      @9      @A      @I      @a�-�fG�)?is�.w��?�Unknown
�^HostSlice"0gradient_tape/sequential_119/user_model_24/Slice(1      @9      @A      @I      @a�-�fG�)?i�a����?�Unknown
�_HostMul"`gradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/mul/Mul(1      @9      @A      @I      @a�-�fG�)?i�`���?�Unknown
�`HostBiasAddGrad"9gradient_tape/sequential_122/dense_39/BiasAdd/BiasAddGrad(1      @9      @A      @I      @a�-�fG�)?il:�M��?�Unknown
aaHostSum"retrieval_17/Sum(1      @9      @A      @I      @a�-�fG�)?i�����?�Unknown
ibHostConcatV2"retrieval_17/concat(1      @9      @A      @I      @a�-�fG�)?iM���?�Unknown
ycHostConcatV2"#sequential_119/user_model_24/concat(1      @9      @A      @I      @a�-�fG�)?ie��"��?�Unknown
�dHostCast"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1(1      @9       @A      @I       @a�-�fG�)?i��k����?�Unknown
�eHostGreater"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater(1      @9       @A      @I       @a�-�fG�)?iX�:\��?�Unknown
�fHostAssignAddVariableOp"#Adagrad/Adagrad/AssignAddVariableOp(1      @9      @A      @I      @aU���W#?iI);����?�Unknown
�gHostUnsortedSegmentSum")Adagrad/Adagrad/update/UnsortedSegmentSum(1      @9      @A      @I      @aU���W#?i���1���?�Unknown
�hHostUnsortedSegmentSum"+Adagrad/Adagrad/update_1/UnsortedSegmentSum(1      @9      @A      @I      @aU���W#?i������?�Unknown
ziHostParallelMapDatasetV2"ParallelMapDatasetV2/_18(1      @9      @A      @I      @aU���W#?i�E(2��?�Unknown
`jHostDivNoNan"
div_no_nan(1      @9      @A      @I      @aU���W#?iAn��g��?�Unknown
bkHostDivNoNan"div_no_nan_4(1      @9      @A      @I      @aU���W#?i?����?�Unknown
�lHostSlice"2gradient_tape/sequential_119/user_model_24/Slice_1(1      @9      @A      @I      @aU���W#?i�P����?�Unknown
�mHostSlice"5gradient_tape/sequential_122/article_model_12/Slice_1(1      @9      @A      @I      @aU���W#?i����?�Unknown
XnHostRange"range(1      @9      @A      @I      @aU���W#?i9��=��?�Unknown
�oHostAssignAddVariableOp" retrieval_17/AssignAddVariableOp(1      @9      @A      @I      @aU���W#?iw�Zs��?�Unknown
�pHostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_2(1      @9      @A      @I      @aU���W#?i�U�����?�Unknown
�qHostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_8(1      @9      @A      @I      @aU���W#?i�&���?�Unknown
crHostSum"retrieval_17/Sum_1(1      @9      @A      @I      @aU���W#?i1�d~��?�Unknown
csHostSum"retrieval_17/Sum_4(1      @9      @A      @I      @aU���W#?ioɽ�H��?�Unknown
�tHostSum"7retrieval_17/categorical_crossentropy/weighted_loss/Sum(1      @9      @A      @I      @aU���W#?i��u~��?�Unknown
auHostMul"retrieval_17/mul(1      @9      @A      @I      @aU���W#?i�ko���?�Unknown
nvHost	ZerosLike"retrieval_17/zeros_like(1      @9      @A      @I      @aU���W#?i)=�k���?�Unknown
�wHostReadVariableOp"-sequential_119/dense_38/MatMul/ReadVariableOp(1      @9      @A      @I      @aU���W#?ig!���?�Unknown
�xHostReadVariableOp"Dsequential_119/user_model_24/normalization_17/Reshape/ReadVariableOp(1      @9      @A      @I      @aU���W#?i��ybT��?�Unknown
�yHostMul"5sequential_119/user_model_24/normalization_17/truediv(1      @9      @A      @I      @aU���W#?i��݉��?�Unknown
�zHostGatherV2"Isequential_119/user_model_24/sequential_117/embedding_79/embedding_lookup(1      @9      @A      @I      @aU���W#?i!�+Y���?�Unknown
�{HostCast"�sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_Cast(1      @9      �?A      @I      �?aU���W#?i_S�����?�Unknown
�|HostCast"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast(1      @9      �?A      @I      �?aU���W#?i�$�O*��?�Unknown
�}HostCast"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast(1      @9      �?A      @I      �?aU���W#?i��5�_��?�Unknown
�~HostStridedSlice"&Adagrad/Adagrad/update_1/strided_slice(1       @9       @A       @I       @a�-�fG�?i,q.��?�Unknown
�HostUnsortedSegmentSum"+Adagrad/Adagrad/update_4/UnsortedSegmentSum(1       @9       @A       @I       @a�-�fG�?i-b�o���?�Unknown
��HostUnsortedSegmentSum"+Adagrad/Adagrad/update_5/UnsortedSegmentSum(1       @9       @A       @I       @a�-�fG�?iV������?�Unknown
��HostStridedSlice"&Adagrad/Adagrad/update_5/strided_slice(1       @9       @A       @I       @a�-�fG�?i�"���?�Unknown
x�HostReadVariableOp"Adagrad/Cast/ReadVariableOp(1       @9       @A       @I       @a�-�fG�?i�^fg��?�Unknown
g�Host
MapDataset"MapDataset/_13(1       @9       @A       @I       @a�-�fG�?i�:��5��?�Unknown
]�HostMinimum"Minimum(1       @9      �?A       @I      �?a�-�fG�?i�p�
��?�Unknown
p�HostReadVariableOp"Read/ReadVariableOp(1       @9       @A       @I       @a�-�fG�?i#�]���?�Unknown
v�HostReadVariableOp"div_no_nan/ReadVariableOp(1       @9       @A       @I       @a�-�fG�?iL�J����?�Unknown
c�HostDivNoNan"div_no_nan_1(1       @9       @A       @I       @a�-�fG�?iu�o��?�Unknown
x�HostReadVariableOp"div_no_nan_4/ReadVariableOp(1       @9       @A       @I       @a�-�fG�?i�I�S=��?�Unknown
��HostSlice"3gradient_tape/sequential_122/article_model_12/Slice(1       @9       @A       @I       @a�-�fG�?i�����?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_3(1       @9       @A       @I       @a�-�fG�?i�7����?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_4(1       @9       @A       @I       @a�-�fG�?i�rJ���?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_6(1       @9       @A       @I       @a�-�fG�?iB"��v��?�Unknown
f�HostCast"retrieval_17/Cast_2(1       @9       @A       @I       @a�-�fG�?ikX��D��?�Unknown
f�HostCast"retrieval_17/Cast_4(1       @9       @A       @I       @a�-�fG�?i��$A��?�Unknown
d�HostSum"retrieval_17/Sum_2(1       @9       @A       @I       @a�-�fG�?i��_����?�Unknown
d�HostSum"retrieval_17/Sum_3(1       @9       @A       @I       @a�-�fG�?i������?�Unknown
d�HostSum"retrieval_17/Sum_5(1       @9       @A       @I       @a�-�fG�?i1�7~��?�Unknown
u�HostInTopKV2"retrieval_17/in_top_k/InTopKV2(1       @9       @A       @I       @a�-�fG�?i8g�L��?�Unknown
w�HostInTopKV2" retrieval_17/in_top_k_1/InTopKV2(1       @9       @A       @I       @a�-�fG�?ia�L���?�Unknown
��HostModelDataset"&retrieval_17/streaming_17/ModelDataset(1       @9       @A       @I       @a�-�fG�?i�Ӈ.���?�Unknown
��HostReadVariableOp".sequential_119/dense_38/BiasAdd/ReadVariableOp(1       @9       @A       @I       @a�-�fG�?i�	À���?�Unknown
��HostReadVariableOp"Fsequential_119/user_model_24/normalization_17/Reshape_1/ReadVariableOp(1       @9       @A       @I       @a�-�fG�?i�?�҅��?�Unknown
��HostSum"Nsequential_122/article_model_12/sequential_121/global_average_pooling1d_11/Sum(1       @9      �?A       @I      �?a�-�fG�?iv9%T��?�Unknown
��HostSum"Psequential_122/article_model_12/sequential_121/global_average_pooling1d_11/Sum_1(1       @9      �?A       @I      �?a�-�fG�?i.�tw"��?�Unknown
��HostMaximum"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum(1       @9      �?A       @I      �?a�-�fG�?iW�����?�Unknown
��HostMul"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul(1       @9      �?A       @I      �?a�-�fG�?i�����?�Unknown
g�Host
MapDataset"MapDataset/_15(1      �?9      �?A      �?I      �?a�-�fG�	?i��E&��?�Unknown
x�HostReadVariableOp"div_no_nan/ReadVariableOp_1(1      �?9      �?A      �?I      �?a�-�fG�	?i�N&n���?�Unknown
c�HostDivNoNan"div_no_nan_2(1      �?9      �?A      �?I      �?a�-�fG�	?i��C����?�Unknown
x�HostReadVariableOp"div_no_nan_2/ReadVariableOp(1      �?9      �?A      �?I      �?a�-�fG�	?iԄa�[��?�Unknown
z�HostReadVariableOp"div_no_nan_2/ReadVariableOp_1(1      �?9      �?A      �?I      �?a�-�fG�	?i�����?�Unknown
c�HostDivNoNan"div_no_nan_3(1      �?9      �?A      �?I      �?a�-�fG�	?i���*��?�Unknown
x�HostReadVariableOp"div_no_nan_3/ReadVariableOp(1      �?9      �?A      �?I      �?a�-�fG�	?iV�;���?�Unknown
��HostBroadcastTo"dgradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/BroadcastTo(1      �?9      �?A      �?I      �?a�-�fG�	?i(��d���?�Unknown
��HostSum"`gradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/mul/Sum(1      �?9      �?A      �?I      �?a�-�fG�	?i=���_��?�Unknown
��HostSum"dgradient_tape/sequential_122/article_model_12/sequential_121/global_average_pooling1d_11/truediv/Sum(1      �?9      �?A      �?I      �?a�-�fG�	?iR'����?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_1(1      �?9      �?A      �?I      �?a�-�fG�	?ig�0�-��?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_5(1      �?9      �?A      �?I      �?a�-�fG�	?i|]N	���?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_7(1      �?9      �?A      �?I      �?a�-�fG�	?i��k2���?�Unknown
��HostAssignAddVariableOp""retrieval_17/AssignAddVariableOp_9(1      �?9      �?A      �?I      �?a�-�fG�	?i���[c��?�Unknown
d�HostCast"retrieval_17/Cast(1      �?9      �?A      �?I      �?a�-�fG�	?i�.�����?�Unknown
f�HostCast"retrieval_17/Cast_6(1      �?9      �?A      �?I      �?a�-�fG�	?i��ĭ1��?�Unknown
f�HostCast"retrieval_17/Cast_8(1      �?9      �?A      �?I      �?a�-�fG�	?i�d�֘��?�Unknown
��HostMinimum"�sequential_122/article_model_12/sequential_121/text_vectorization_10/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum(1      �?9      �?A      �?I      �?a�-�fG�	?i�������?�Unknown
5�HostIdentity"Identity(i�������?�Unknown�
K�HostReadVariableOp"div_no_nan_1/ReadVariableOp(i�������?�Unknown
M�HostReadVariableOp"div_no_nan_1/ReadVariableOp_1(i�������?�Unknown
M�HostReadVariableOp"div_no_nan_3/ReadVariableOp_1(i�������?�Unknown
M�HostReadVariableOp"div_no_nan_4/ReadVariableOp_1(i�������?�Unknown