.class Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$2;
.super Ljava/lang/Object;
.source "DoodleEraserDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$2;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 172
    if-eqz p3, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$2;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->access$100(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;

    move-result-object v0

    add-int/lit8 v1, p2, 0xa

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->setEraserSize(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 179
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$2;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$2;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;->setEraserPaintSize(I)V

    .line 186
    :cond_0
    return-void
.end method
