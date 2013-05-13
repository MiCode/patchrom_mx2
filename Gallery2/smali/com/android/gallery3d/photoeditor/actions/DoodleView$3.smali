.class Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;
.super Ljava/lang/Object;
.source "DoodleView.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputShownChanged(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->post(Ljava/lang/Runnable;)Z

    .line 427
    :cond_0
    return-void
.end method
