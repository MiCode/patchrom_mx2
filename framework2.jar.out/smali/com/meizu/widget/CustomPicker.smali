.class public Lcom/meizu/widget/CustomPicker;
.super Landroid/widget/FrameLayout;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/CustomPicker$1;,
        Lcom/meizu/widget/CustomPicker$SavedState;,
        Lcom/meizu/widget/CustomPicker$DataAdapter;,
        Lcom/meizu/widget/CustomPicker$ColumnData;,
        Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;
    }
.end annotation


# instance fields
.field private mColumnCount:I

.field private mCurrentItems:[I

.field private mOnItemChangedListener:Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;

.field private mPickers:[Lcom/meizu/widget/ScrollTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/meizu/widget/CustomPicker$ColumnData;)V
    .locals 2
    .parameter "context"
    .parameter "columnCount"
    .parameter "columnData"

    .prologue
    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    invoke-virtual {p0, p2, p3}, Lcom/meizu/widget/CustomPicker;->initPicker(I[Lcom/meizu/widget/CustomPicker$ColumnData;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/CustomPicker;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/CustomPicker;)Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mOnItemChangedListener:Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;

    return-object v0
.end method


# virtual methods
.method public getCurrentItem(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 275
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-lt p1, v0, :cond_1

    .line 276
    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getCurrentItems()[I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    return-object v0
.end method

.method public varargs initPicker(I[Lcom/meizu/widget/CustomPicker$ColumnData;)V
    .locals 15
    .parameter "columnCount"
    .parameter "columnData"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/meizu/widget/CustomPicker;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/meizu/widget/CustomPicker;->removeAllViews()V

    .line 156
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "columnCount only be 1 or 2 or 3."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :pswitch_0
    iget-object v3, p0, Lcom/meizu/widget/CustomPicker;->mContext:Landroid/content/Context;

    const v4, 0x109009c

    invoke-static {v3, v4, p0}, Lcom/meizu/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 173
    :goto_0
    move/from16 v0, p1

    iput v0, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    .line 174
    iget v3, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    .line 175
    const/4 v3, 0x3

    new-array v10, v3, [Landroid/widget/TextView;

    .line 178
    .local v10, columnTextViews:[Landroid/widget/TextView;
    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    const/4 v5, 0x0

    const v3, 0x10202bc

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/ScrollTextView;

    aput-object v3, v4, v5

    .line 179
    const/4 v4, 0x0

    const v3, 0x10202bd

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v10, v4

    .line 182
    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    const/4 v5, 0x1

    const v3, 0x10202c0

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/ScrollTextView;

    aput-object v3, v4, v5

    .line 183
    const/4 v4, 0x1

    const v3, 0x10202c1

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v10, v4

    .line 186
    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    const/4 v5, 0x2

    const v3, 0x10202c4

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/ScrollTextView;

    aput-object v3, v4, v5

    .line 187
    const/4 v4, 0x2

    const v3, 0x10202c5

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v10, v4

    .line 189
    const/4 v13, 0x0

    .line 190
    .local v13, index:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    iget v3, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge v12, v3, :cond_5

    .line 191
    iget-object v3, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    aget-object v1, v3, v12

    .line 192
    .local v1, picker:Lcom/meizu/widget/ScrollTextView;
    aget-object v14, v10, v12

    .line 194
    .local v14, text:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    if-eqz v14, :cond_1

    .line 195
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_4

    const/4 v3, 0x0

    aget-object v3, p2, v3

    if-eqz v3, :cond_4

    .line 196
    aget-object v11, p2, v13

    .line 197
    .local v11, data:Lcom/meizu/widget/CustomPicker$ColumnData;
    if-nez v11, :cond_2

    .line 198
    add-int/lit8 v13, v13, -0x1

    .line 199
    aget-object v11, p2, v13

    .line 204
    :goto_2
    iget-object v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v3, :cond_3

    iget-object v2, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    .line 206
    .local v2, setData:Lcom/meizu/widget/ScrollTextView$IDataAdapter;
    :goto_3
    iget-object v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mLineOffset:F

    iget v4, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mCurrentItem:I

    iget v5, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mCount:I

    iget v6, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    iget v7, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidStart:I

    iget v8, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidEnd:I

    iget-boolean v9, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    invoke-virtual/range {v1 .. v9}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 190
    .end local v2           #setData:Lcom/meizu/widget/ScrollTextView$IDataAdapter;
    .end local v11           #data:Lcom/meizu/widget/CustomPicker$ColumnData;
    :cond_1
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 162
    .end local v1           #picker:Lcom/meizu/widget/ScrollTextView;
    .end local v10           #columnTextViews:[Landroid/widget/TextView;
    .end local v12           #i:I
    .end local v13           #index:I
    .end local v14           #text:Landroid/widget/TextView;
    :pswitch_1
    iget-object v3, p0, Lcom/meizu/widget/CustomPicker;->mContext:Landroid/content/Context;

    const v4, 0x109009d

    invoke-static {v3, v4, p0}, Lcom/meizu/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 166
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/widget/CustomPicker;->mContext:Landroid/content/Context;

    const v4, 0x109009e

    invoke-static {v3, v4, p0}, Lcom/meizu/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 201
    .restart local v1       #picker:Lcom/meizu/widget/ScrollTextView;
    .restart local v10       #columnTextViews:[Landroid/widget/TextView;
    .restart local v11       #data:Lcom/meizu/widget/CustomPicker$ColumnData;
    .restart local v12       #i:I
    .restart local v13       #index:I
    .restart local v14       #text:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 204
    :cond_3
    new-instance v2, Lcom/meizu/widget/CustomPicker$DataAdapter;

    iget v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mStartValue:I

    invoke-direct {v2, p0, v12, v3}, Lcom/meizu/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/widget/CustomPicker;II)V

    goto :goto_3

    .line 211
    .end local v11           #data:Lcom/meizu/widget/CustomPicker$ColumnData;
    :cond_4
    packed-switch v12, :pswitch_data_1

    goto :goto_4

    .line 213
    :pswitch_3
    const v3, 0x1040401

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 214
    new-instance v3, Lcom/meizu/widget/CustomPicker$DataAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/meizu/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/widget/CustomPicker;II)V

    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0xd

    const/4 v6, 0x5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;III)V

    goto :goto_4

    .line 218
    :pswitch_4
    const v3, 0x1040403

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 219
    new-instance v3, Lcom/meizu/widget/CustomPicker$DataAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/meizu/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/widget/CustomPicker;II)V

    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/16 v5, 0x3c

    const/4 v6, 0x5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;III)V

    goto :goto_4

    .line 223
    :pswitch_5
    const v3, 0x1040405

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 224
    new-instance v3, Lcom/meizu/widget/CustomPicker$DataAdapter;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/meizu/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/widget/CustomPicker;II)V

    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const/16 v5, 0x3c

    const/4 v6, 0x5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;III)V

    goto :goto_4

    .line 231
    .end local v1           #picker:Lcom/meizu/widget/ScrollTextView;
    .end local v14           #text:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/widget/CustomPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 232
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->setEnabled(Z)V

    .line 234
    :cond_6
    return-void

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 300
    move-object v0, p1

    check-cast v0, Lcom/meizu/widget/CustomPicker$SavedState;

    .line 301
    .local v0, ss:Lcom/meizu/widget/CustomPicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/widget/CustomPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 302
    invoke-virtual {v0}, Lcom/meizu/widget/CustomPicker$SavedState;->getCurrentItems()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/CustomPicker;->updateCurrentItems([I)V

    .line 303
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 294
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 295
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/widget/CustomPicker$SavedState;

    iget-object v2, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/meizu/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcelable;[ILcom/meizu/widget/CustomPicker$1;)V

    return-object v1
.end method

.method public setCurrentItem(II)V
    .locals 1
    .parameter "columnIndex"
    .parameter "currentItem"

    .prologue
    .line 286
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge p1, v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    aput p2, v0, p1

    .line 288
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CustomPicker;->updateCurrentItems([I)V

    .line 290
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/meizu/widget/ScrollTextView;->setEnabled(Z)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public setOnCurrentItemChangedListener(Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;)V
    .locals 0
    .parameter "onItemChangedListener"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/meizu/widget/CustomPicker;->mOnItemChangedListener:Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;

    .line 265
    return-void
.end method

.method public varargs updateCurrentItems([I)V
    .locals 3
    .parameter "currentItems"

    .prologue
    .line 240
    if-nez p1, :cond_1

    .line 248
    :cond_0
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 246
    iget-object v1, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
