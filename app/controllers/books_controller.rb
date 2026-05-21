class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    # 成功したら詳細画面(show)へリダイレクト
      redirect_to book_path(@book.id), notice: '投稿が完了しました！'
    else
      render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id]) # 削除するBookレコードを取得
    book.destroy                  # 削除
    redirect_to books_path        # 一覧ページ（index）へのパスへリダイレクト
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
     
  end
end
