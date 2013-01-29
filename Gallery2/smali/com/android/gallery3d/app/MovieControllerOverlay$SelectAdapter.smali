.class Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectAdapter"
.end annotation


# instance fields
.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private curSelect:I

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 2893
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->array:Ljava/util/ArrayList;

    .line 2891
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->curSelect:I

    .line 2894
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2895
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2912
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2917
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2922
    if-nez p2, :cond_0

    .line 2923
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2925
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 2926
    .local v0, ct:Landroid/widget/CheckedTextView;
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->array:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2927
    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->curSelect:I

    if-ne p1, v1, :cond_1

    .line 2928
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2929
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 2935
    :goto_0
    return-object p2

    .line 2931
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2932
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2898
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->array:Ljava/util/ArrayList;

    .line 2899
    return-void
.end method

.method public setSelect(I)V
    .locals 0
    .parameter "select"

    .prologue
    .line 2902
    iput p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$SelectAdapter;->curSelect:I

    .line 2903
    return-void
.end method
