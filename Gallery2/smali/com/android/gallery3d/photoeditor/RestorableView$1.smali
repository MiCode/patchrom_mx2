.class Lcom/android/gallery3d/photoeditor/RestorableView$1;
.super Ljava/lang/Object;
.source "RestorableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/RestorableView;->setClickRunnable(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/RestorableView;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/RestorableView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/RestorableView$1;->this$0:Lcom/android/gallery3d/photoeditor/RestorableView;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/RestorableView$1;->val$r:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView$1;->this$0:Lcom/android/gallery3d/photoeditor/RestorableView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/RestorableView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_0
    return-void
.end method
