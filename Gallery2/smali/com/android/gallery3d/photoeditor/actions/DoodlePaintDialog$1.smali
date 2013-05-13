.class Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$1;
.super Ljava/lang/Object;
.source "DoodlePaintDialog.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;


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
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoodleColorChanged(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->refreshPaintColor(I)V

    .line 77
    return-void
.end method

.method public onDoodleColorCompleted(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->refreshPaintColor(I)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;->onDoodlePaintColor(I)V

    .line 72
    return-void
.end method
