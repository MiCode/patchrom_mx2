.class Lcom/android/gallery3d/photoeditor/actions/DoodleView$2;
.super Ljava/lang/Object;
.source "DoodleView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addEditText(FF)V
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
    .line 328
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    .line 342
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$100(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$100(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$200(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;->onDoodleTextModified(Z)V

    .line 345
    :cond_1
    return-void

    .line 343
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 338
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 332
    return-void
.end method
