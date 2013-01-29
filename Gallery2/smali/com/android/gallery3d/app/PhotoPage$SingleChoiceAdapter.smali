.class public Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleChoiceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInWhich:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .parameter "c"
    .parameter
    .parameter "inWhich"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, this:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>;"
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    .line 1038
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->setSelection(I)V

    .line 1039
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1040
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;I)V
    .locals 1
    .parameter "c"
    .parameter
    .parameter "inWhich"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;I)V"
        }
    .end annotation

    .prologue
    .line 1032
    .local p0, this:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>;"
    .local p2, objects:[Ljava/lang/Object;,"[TT;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 1033
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mContext:Landroid/content/Context;

    .line 1034
    return-void

    .line 1032
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1080
    .local p0, this:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1081
    const/4 v0, 0x0

    .line 1083
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1051
    .local p0, this:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 1052
    const/4 v0, 0x0

    .line 1054
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1087
    .local p0, this:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1091
    if-nez p2, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040025

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1093
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;-><init>(Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;Lcom/android/gallery3d/app/PhotoPage$1;)V

    .line 1094
    .local v0, vh:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>.ViewHolder;"
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    .line 1095
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setSingleLine(Z)V

    .line 1096
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1097
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1099
    .end local v0           #vh:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>.ViewHolder;"
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;

    .line 1100
    .restart local v0       #vh:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>.ViewHolder;"
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_1

    .line 1101
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mInWhich:I

    if-ne v1, p1, :cond_2

    .line 1103
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1104
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 1110
    :cond_1
    :goto_0
    return-object p2

    .line 1106
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1107
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter$ViewHolder;->mCheckText:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setObjects(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, this:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>;"
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1062
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->notifyDataSetChanged()V

    .line 1063
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 1066
    .local p0, this:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;,"Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter<TT;>;"
    if-gez p1, :cond_1

    .line 1067
    const/4 p1, 0x0

    .line 1071
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->mInWhich:I

    .line 1072
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->notifyDataSetChanged()V

    .line 1073
    return-void

    .line 1068
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method
