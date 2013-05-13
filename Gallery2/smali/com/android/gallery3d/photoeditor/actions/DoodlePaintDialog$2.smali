.class Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;
.super Ljava/lang/Object;
.source "DoodlePaintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const/16 v1, 0xff

    #setter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$102(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;I)I

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;->onDoodleColorPicker()V

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$100(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;->onDoodlePaintAlpha(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlphaBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$200(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$100(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->dismiss()V

    .line 91
    return-void
.end method
