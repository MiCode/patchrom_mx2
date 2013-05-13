.class Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;
.super Ljava/lang/Object;
.source "DoodleShapeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->setColor(IZ)V

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$000(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->setColor(IZ)V

    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #setter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v1, v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$202(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;I)I

    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$000(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;->onShapeChange(II)V

    .line 126
    :cond_0
    return-void

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
