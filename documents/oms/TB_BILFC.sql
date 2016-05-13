/*
================================================================================
��ṹ����:TB_BILFC
��ṹ����:�������÷�̯����̯�ܱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILFC;
drop index AK_TB_BILFC;
drop table TB_BILFC;
create table TB_BILFC  (
   BILFC_ID             INTEGER                         not null,  /*�������÷�̯����̯�ܱ�ID */
   BILFC001             INTEGER                         not null,  /*�������÷�̯��ID         */
   BILFC002             INTEGER                         not null,  /*̯λID                   */
   BILFC003             INTEGER                         not null,  /*�̻�ID                   */
   BILFC004             NUMBER(12,2),                              /*�ۿ۽��                 */ 
   BILFC005             NUMBER(12,2),                              /*��ȯ���                 */ 
   BILFC006             NUMBER(12,2),                              /*�������                 */ 
   BILFC007             NUMBER(12,2),                              /*�ۿ۷�̯���             */ 
   BILFC008             NUMBER(12,2),                              /*��ȯ��̯���             */ 
   BILFC009             NUMBER(12,2),                              /*������̯���             */ 
   BILFC010             NUMBER(12,2),                              /*�ۿ۲�����             */ 
   BILFC011             NUMBER(12,2),                              /*��ȯ������             */ 
   BILFC012             NUMBER(12,2),                              /*����������             */ 
   BILFC013             NUMBER(12,2),                              /*�ۿ۷�̯������         */ 
   BILFC014             NUMBER(12,2),                              /*��ȯ��̯������         */ 
   BILFC015             NUMBER(12,2),                              /*������̯������         */ 
   BILFC016             NUMBER(12,2),                              /*�ܷ�̯������(��˾�е�) */ 
   BILFC017             NUMBER(12,2),                              /*�ܷ�̯������(�̼ҳе�) */
   BILFC018             NUMBER(12,2),                              /*����������ý��         */
   BILFC019             INTEGER,                                   /*���õ�ID                 */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա                 */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����             */                               
   CREATE_DATE          DATE,                                      /*��������                 */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                 */
   MODI_DATE            DATE,                                      /*�޸�����                 */
   FLAG                 NUMBER(1),                                 /*����״̬                 */
   constraint PK_TB_BILFC primary key (BILFC_ID)
);
create unique index AK_TB_BILFC on TB_BILFC (BILFC001,BILFC002,BILFC003);
create sequence SEQ_TB_BILFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILFC to public;
grant index  on TB_BILFC to public;
grant update on TB_BILFC to public; 
grant delete on TB_BILFC to public;  
grant insert on TB_BILFC to public; 
grant select on SEQ_TB_BILFC to public;   