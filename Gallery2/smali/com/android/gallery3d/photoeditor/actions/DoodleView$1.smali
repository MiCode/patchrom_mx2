.class Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;
.super Ljava/lang/Object;
.source "DoodleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleView;->updateEditTextLocation(IIFF)V
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
    .line 286
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->requestLayout()V

    .line 289
    return-void
.end method
