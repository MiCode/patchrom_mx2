.class Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;
.super Ljava/lang/Object;
.source "DoodleTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/DoodleTextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$000(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$000(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)[Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mDefaultColor:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #setter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I
    invoke-static {v1, v0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$102(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;I)I

    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$000(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)[Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedColor:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$300(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$400(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$400(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$000(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)[Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedColor:I
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->access$300(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;->onTextSettingChangeListener(FI)V

    .line 82
    :cond_0
    return-void

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
