class BooksController < ApplicationController
  def new
     # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @book = Book.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    @book.save
    # 4. show画面へリダイレクト
    redirect_to "/show"#showのコントローラーとルーティングを作ることでエラー解消する？
  end

  def index
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end