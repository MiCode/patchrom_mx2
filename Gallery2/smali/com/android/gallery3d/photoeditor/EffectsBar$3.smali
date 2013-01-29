.class Lcom/android/gallery3d/photoeditor/EffectsBar$3;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->scrollToSelectChild(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field final synthetic val$offset:I

.field final synthetic val$scrollview:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$scrollview:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$offset:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$scrollview:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$offset:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 335
    return-void
.end method
