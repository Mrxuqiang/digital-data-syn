/*
================================================================================
��ṹ����:TB_SALAB
��ṹ����:�������ʱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALAB;
drop index AK_TB_SALAB;
drop table TB_SALAB;
create table TB_SALAB  (
   SALAB_ID             INTEGER                         not null,  /*��������ID       */
   SALAB001             INTEGER                         not null,  /*��˾ID           */
   SALAB002             INTEGER                         not null,  /*Ӫ����֯ID       */
   SALAB003             INTEGER                         not null,  /*����ID           */
   SALAB004             VARCHAR2(8)                     not null,  /*���ʴ���         */
   SALAB005             VARCHAR2(30)                    not null,  /*��������         */
   SALAB006             VARCHAR2(1)                     not null,  /*��������         */
   SALAB007             NUMBER(12,2),                              /*��������         */
   SALAB008             NUMBER(12,2),                              /*�����Ѷ�         */
   SALAB009             VARCHAR2(1)                     not null,  /*�Ƿ�Ĭ�� add by hansf*/
   SALAB010             NUMBER(12,0),                              /*������С��λ     */ add ouwx 2011/8/29
   SALAB011             VARCHAR2(1),                               /*�����������         */ 20111228 add by gaoxl for10209
   SALAB012             NUMBER(22,2),                              /*������������         */ 20111228 add by gaoxl for10209
   SALAB013             NUMBER(22,2),                              /*���������Ѷ�         */ 20111228 add by gaoxl for10209
   SALAB014             NUMBER(12,0),                              /*����������С��λ     */ 20111228 add by gaoxl for10209     
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER,                                 /*����״̬         */
   constraint PK_TB_SALAB primary key (SALAB_ID)
);
create unique index AK_TB_SALAB on TB_SALAB (SALAB002,SALAB003,SALAB004);
create sequence SEQ_TB_SALAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAB to public;
grant index  on TB_SALAB to public;
grant update on TB_SALAB to public; 
grant delete on TB_SALAB to public;  
grant insert on TB_SALAB to public; 
grant select on SEQ_TB_SALAB to public;   