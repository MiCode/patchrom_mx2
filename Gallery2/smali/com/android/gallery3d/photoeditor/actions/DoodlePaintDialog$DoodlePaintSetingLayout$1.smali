.class Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout$1;
.super Ljava/lang/Object;
.source "DoodlePaintDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 195
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 199
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintSizeBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->access$100(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;->setPaintSize(I)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;->setPaintAlpha(I)V

    goto :goto_0
.end method
