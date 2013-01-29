.class Lcom/android/gallery3d/photoeditor/EffectsBar$4$1;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/EffectsBar$4;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar$4;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4$1;->this$1:Lcom/android/gallery3d/photoeditor/EffectsBar$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4$1;->this$1:Lcom/android/gallery3d/photoeditor/EffectsBar$4;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #calls: Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1300(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)Z

    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4$1;->this$1:Lcom/android/gallery3d/photoeditor/EffectsBar$4;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method
