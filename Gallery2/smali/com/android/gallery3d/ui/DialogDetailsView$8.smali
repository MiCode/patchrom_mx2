.class Lcom/android/gallery3d/ui/DialogDetailsView$8;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 508
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 482
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$800(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$902(Lcom/android/gallery3d/ui/DialogDetailsView;I)I

    .line 495
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$900(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1000(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1200(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v2

    #setter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1102(Lcom/android/gallery3d/ui/DialogDetailsView;I)I

    .line 497
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1200(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$900(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1000(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v3

    div-int/2addr v2, v3

    #setter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1102(Lcom/android/gallery3d/ui/DialogDetailsView;I)I

    .line 498
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1300(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$8;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1100(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
