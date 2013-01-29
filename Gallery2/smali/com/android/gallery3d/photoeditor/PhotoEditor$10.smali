.class Lcom/android/gallery3d/photoeditor/PhotoEditor$10;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveFilter()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 423
    return-void
.end method
