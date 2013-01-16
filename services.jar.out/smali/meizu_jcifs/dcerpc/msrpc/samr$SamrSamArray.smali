.class public Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrSamArray"
.end annotation


# instance fields
.field public count:I

.field public entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 6
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 223
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    .line 224
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 226
    .local v1, _entriesp:I
    if-eqz v1, :cond_4

    .line 227
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 228
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 229
    .local v2, _entriess:I
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 230
    .local v0, _entriesi:I
    mul-int/lit8 v4, v2, 0xc

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 232
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    if-nez v4, :cond_2

    .line 233
    if-ltz v2, :cond_0

    const v4, 0xffff

    if-le v2, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_1
    new-array v4, v2, [Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    .line 236
    :cond_2
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 237
    const/4 v3, 0x0

    .local v3, _i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 238
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 239
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;-><init>()V

    aput-object v5, v4, v3

    .line 241
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v0           #_entriesi:I
    .end local v2           #_entriess:I
    .end local v3           #_i:I
    :cond_4
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 205
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 206
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 208
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    if-eqz v3, :cond_0

    .line 209
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 210
    iget v1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    .line 211
    .local v1, _entriess:I
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 212
    iget v0, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 213
    .local v0, _entriesi:I
    mul-int/lit8 v3, v1, 0xc

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 215
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 216
    const/4 v2, 0x0

    .local v2, _i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 217
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v0           #_entriesi:I
    .end local v1           #_entriess:I
    .end local v2           #_i:I
    :cond_0
    return-void
.end method
