.class Lcom/meizu/widget/FoldableTextView$MoreClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "FoldableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreClickSpan"
.end annotation


# instance fields
.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/widget/FoldableTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/FoldableTextView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "text"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/widget/FoldableTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->mText:Ljava/lang/CharSequence;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/FoldableTextView$MoreClickSpan;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "widget"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/widget/FoldableTextView;

    #getter for: Lcom/meizu/widget/FoldableTextView;->mListener:Lcom/meizu/widget/FoldableTextView$FoldingListener;
    invoke-static {v0}, Lcom/meizu/widget/FoldableTextView;->access$100(Lcom/meizu/widget/FoldableTextView;)Lcom/meizu/widget/FoldableTextView$FoldingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/widget/FoldableTextView;

    #getter for: Lcom/meizu/widget/FoldableTextView;->mListener:Lcom/meizu/widget/FoldableTextView$FoldingListener;
    invoke-static {v0}, Lcom/meizu/widget/FoldableTextView;->access$100(Lcom/meizu/widget/FoldableTextView;)Lcom/meizu/widget/FoldableTextView$FoldingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/widget/FoldableTextView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/widget/FoldableTextView;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/widget/FoldableTextView;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/widget/FoldableTextView;->mHasUnfolded:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/FoldableTextView;->access$202(Lcom/meizu/widget/FoldableTextView;Z)Z

    .line 183
    iget-object v0, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/widget/FoldableTextView;

    iget-object v1, p0, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->mText:Ljava/lang/CharSequence;

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 173
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 174
    return-void
.end method
