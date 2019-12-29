# ncl_workflow-engine(SFlow)
## Introduction
Distributed workflow engine for workflow scheduling and service function chaining **(SFC)** for a real environment.
One function corresponds to one linux commnad or a Docker container.
Though there are several workflow enginges to handle task allocation, this workflow engine, i.e., **ncl_wokflow-engine(SFlow)** is characterized to have a specific task/function scheduling algorithm, called **S**ervice **F**unction **C**lustering for **U**tilizing **v**CPUs (**SF-CUV**) algorithm. In particular, NCLW includes other well-known function scheduling algorithms such as HEFT, PEFT, CoordVNF, and FWS. 
## NCLWの概要
- サービスファンクションのワークフロージョブにおいて，VM内の仮想CPU(vCPU)，または物理ホストの各コアに対して，各ファンクションのスケジューリングを行って割り当てます．つまりネットワーク上に分散した仮想／物理ホストに対してサービスファンクション配備するワークフローエンジンです．
  - スケジューリングアルゴリズムとしてはSF-CUV, HEFT, PEFT, FWS, CoordVNFを実装しており，設定ファイルにて選択できます．
- ファンクション=Dockerコンテナであり，まずはホスト内にバッチ処理がインストールされているかチェックします．インストール済みであればそのまま実行し，されていなければ指定のDockerリポジトリからDockerイメージをロードしてから実行します．
- チェイニング方式: IPベースによるチェイニングに加えて，ICNによるチェイニングが可能です．ICNによって一度実行したファンクションの結果データを再実行することなく取得でき，処理時間の節約になります．
