.class Lcom/android/gallery3d/photoeditor/PhotoEditor$8;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->setSystemActionBarOnClickListener()V
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
    .line 380
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->undo()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$800(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 384
    return-void
.end method
