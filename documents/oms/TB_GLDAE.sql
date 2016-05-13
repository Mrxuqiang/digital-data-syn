/*
================================================================================
��ṹ����:TB_GLDAE
��ṹ����:ƾ֤��¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAE;
drop index AK_TB_GLDAE;
drop table TB_GLDAE;
create table TB_GLDAE  (
   GLDAE_ID             INTEGER                         not null,   /*ƾ֤��¼ID                */
   GLDAE001             INTEGER                         not null,   /*ƾ֤ID                    */
   GLDAE002             NUMBER(6),                                  /*Ԥ���ֶ�                      */
   GLDAE003             VARCHAR2(255)                   not null,   /*ժҪ                      */
   GLDAE004             INTEGER                         not null,   /*��ĿID                    */
   GLDAE005             INTEGER                         not null,   /*����ID                    */
   GLDAE006             VARCHAR(20),                                /*���������ʶ              */
   GLDAE007             NUMBER(12,2),                               /*����                      */
   GLDAE008             NUMBER(16,7),                               /*����1                     */
   GLDAE009             NUMBER(16,7),                               /*����2                     */
   GLDAE010             NUMBER(18,3),                               /*�跽����                   */
   GLDAE011             NUMBER(16,2),                               /*ԭ�ҽ跽������             */
   GLDAE012             NUMBER(16,2),                               /*���ҽ跽������             */
   GLDAE013             NUMBER(16,2),                               /*���ҽ跽������             */
   GLDAE014             NUMBER(18,3),                               /*��������                   */
   GLDAE015             NUMBER(16,2),                               /*ԭ�Ҵ���������             */
   GLDAE016             NUMBER(16,2),                               /*���Ҵ���������             */
   GLDAE017             NUMBER(16,2),                               /*���Ҵ���������             */
   GLDAE018             VARCHAR2(255),                              /*��ע                       */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����               */                               
   CREATE_DATE          DATE,                                       /*��������                   */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                   */
   MODI_DATE            DATE,                                       /*�޸�����                   */
   FLAG                 NUMBER(1),                                  /*����״̬                   */
   constraint PK_TB_GLDAE primary key (GLDAE_ID)
);
create unique index AK_TB_GLDAE on TB_GLDAE (GLDAE001,GLDAE002);
create sequence SEQ_TB_GLDAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAE to public;
grant index  on TB_GLDAE to public;
grant update on TB_GLDAE to public; 
grant delete on TB_GLDAE to public;  
grant insert on TB_GLDAE to public; 
grant select on SEQ_TB_GLDAE to public;   