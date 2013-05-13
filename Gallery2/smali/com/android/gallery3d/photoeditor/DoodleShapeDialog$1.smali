.class Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;
.super Ljava/lang/Object;
.source "DoodleShapeDialog.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->initViews()V
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
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #setter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I
    invoke-static {v0, p1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$002(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;I)I

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->setColor(IZ)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->invalidate()V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;->onShapeChange(II)V

    .line 72
    :cond_0
    return-void
.end method
