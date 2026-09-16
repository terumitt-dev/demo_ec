# README

## コンセプト
   
 - 農産物の規格外品を捨てるのではなく、欲しい人に買ってもらうためのアプリケーション
   
## 特徴
   
 - 出品の簡素化を目標に構築

## TESTアカウント
 - メールアドレス:demo@email.com

   パスワード:demo
   
 - メールアドレス:test@email.com
  
   パスワード:test

## 環境構成

 - ruby 3.1.2
 - Rails 7.0.2.3
 - psql (PostgreSQL) 10.22
 - payjp
  
## 使用技術
   
 - AWS

## CI/CD

 - Drone CI（`.drone.yml`）でpush/PR時にDockerイメージをビルド
 - ECR_REGISTRY未確定のため、ECRへのpushは一旦コメントアウトしビルド確認のみ実施（AWS認証情報は設定済み）
 - デプロイ先（K8s等）も調整中
 - PRレビューはGitHub Actions経由でClaude/CodexのダブルAIレビュー＋自動Approveに対応（`.github/workflows/`, `CLAUDE.md`）

## 課題（今後の改善等）
   
 - メール実装（購入者：決済完了メール・出品者：注文対応メール）
 - デザインの修正（調整）
 - データの取得方法の検討（controller）
 - デプロイ先インフラの決定とDrone CDパイプラインの整備
