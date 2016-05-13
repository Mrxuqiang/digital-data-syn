/*
================================================================================
��ṹ����:TB_GLDAH
��ṹ����:�ⲿ������ʱƾ֤��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAH;
drop index AK_TB_GLDAH;
drop table TB_GLDAH;
create table TB_GLDAH  (
   GLDAH_ID             INTEGER                         not null,   /*��ʱƾ֤ID                */
   GLDAH001             INTEGER                          not null,   /*�ⲿ����ID                    */
   GLDAH002             VARCHAR2(5) ,                               /*���                      */
   GLDAH003             VARCHAR2(255)                   not null,   /*ժҪ                      */
   GLDAH004             INTEGER                         not null,   /*��Ŀ����ID                    */
   GLDAH005             INTEGER                         not null,   /*����ID                    */
   GLDAH006             VARCHAR2(20)                     not null,   /*�����������ʶ                  */
   GLDAH007             NUMBER(16,2),                               /*����                      */
   GLDAH008             NUMBER(16,4),                                /*����1                     */
   GLDAH009             NUMBER(16,4),                                /*����2                     */
   GLDAH010             NUMBER(18,3),                               /*�跽����                   */
   GLDAH011             NUMBER(16,2),                               /*ԭ�ҽ跽������             */
   GLDAH012             NUMBER(16,2),                               /*���ҽ跽������             */
   GLDAH013             NUMBER(16,2),                               /*���ҽ跽������             */
   GLDAH014             NUMBER(18,3),                               /*��������                   */
   GLDAH015             NUMBER(16,2),                               /*ԭ�Ҵ���������             */
   GLDAH016             NUMBER(16,2),                                /*���Ҵ���������             */
   GLDAH017             NUMBER(16,2),                                /*���Ҵ���������             */
   GLDAH018             VARCHAR2(255),                              /*��ע                       */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����               */                               
   CREATE_DATE          DATE,                                       /*��������                   */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                   */
   MODI_DATE            DATE,                                       /*�޸�����                   */
   FLAG                 NUMBER(1),                                  /*����״̬                   */
   constraint PK_TB_GLDAH primary key (GLDAH_ID)
);
create sequence SEQ_TB_GLDAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAH to public;
grant index  on TB_GLDAH to public;
grant update on TB_GLDAH to public; 
grant delete on TB_GLDAH to public;  
grant insert on TB_GLDAH to public; 
grant select on SEQ_TB_GLDAH to public;   