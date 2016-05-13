/*
================================================================================
��ṹ����:TB_GLDAC
��ṹ����:���ڽ����ܱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAC;
drop index AK_TB_GLDAC;
drop table TB_GLDAC;
create table TB_GLDAC  (
   GLDAC_ID             INTEGER                          not null,  /*���ڽ�����ID               */
   GLDAC001             INTEGER                          not null,  /*�����ʲ�ID                   */
   GLDAC002             INTEGER                          not null,  /*��˾����ID                   */
   GLDAC003             INTEGER                          not null,  /*�������ID                   */
   GLDAC004             INTEGER                          not null,  /*��ƿ�ĿID                   */
   GLDAC005             VARCHAR2(4)                      not null,  /*������                     */
   GLDAC006             VARCHAR2(2)                      not null,  /*����ڼ�                     */ 
   GLDAC007             INTEGER                          not null,  /*����ID                       */ 
   GLDAC008             NUMBER(18,3),                               /*�跽����                     */
   GLDAC009             NUMBER(16,2),                               /*ԭ�ҽ跽������               */
   GLDAC010             NUMBER(16,2),                               /*���ҽ跽������               */
   GLDAC011             NUMBER(16,2),                               /*���ҽ跽������               */
   GLDAC012             NUMBER(18,3),                               /*��������                     */
   GLDAC013             NUMBER(16,2),                               /*ԭ�Ҵ���������               */ 
   GLDAC014             NUMBER(16,2),                               /*���Ҵ���������               */
   GLDAC015             NUMBER(16,2),                               /*���Ҵ���������               */ 
   GLDAC016             VARCHAR(20),                                /*���������ʶ                */   
   CREATE_USER          VARCHAR2(12),                               /*������Ա                     */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����                 */                               
   CREATE_DATE          DATE,                                       /*��������                     */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                     */
   MODI_DATE            DATE,                                       /*�޸�����                     */
   FLAG                 NUMBER(1),                                  /*����״̬                     */
   constraint PK_TB_GLDAC primary key (GLDAC_ID)
);
create unique index AK_TB_GLDAC on TB_GLDAC (GLDAC001,GLDAC002,GLDAC004,GLDAC005,GLDAC006,GLDAC007,GLDAC016);
create sequence SEQ_TB_GLDAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAC to public;
grant index  on TB_GLDAC to public;
grant update on TB_GLDAC to public; 
grant delete on TB_GLDAC to public;  
grant insert on TB_GLDAC to public; 
grant select on SEQ_TB_GLDAC to public;   