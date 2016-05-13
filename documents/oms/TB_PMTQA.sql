/*
================================================================================
��ṹ����:TB_PMTQA
��ṹ����:��齱������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTQA;
drop index AK_TB_PMTQA;
drop table TB_PMTQA;
create table TB_PMTQA  (
   PMTQA_ID             INTEGER                         not null,  /*��齱��ID                 */
   PMTQA001             INTEGER                         not null,  /*����ID                       */
   PMTQA002             VARCHAR2(30)                    not null,  /*�齱����                     */
   PMTQA003             DATE                            not null,  /*�齱����                     */
   PMTQA004             VARCHAR2(30),                              /*�ͻ�����                     */
   PMTQA005             VARCHAR2(30),                              /*�ͻ��绰                     */
   PMTQA006             INTEGER                         not null,  /*����Ӫ����֯                 */
   PMTQA007             INTEGER                         not null,  /*���Ų���ID                   */
   PMTQA008             INTEGER                         not null,  /*������ԱID                   */
   PMTQA009             VARCHAR2(1),                               /*��������                     */
   PMTQA010             VARCHAR2(30),                              /*��������                     */   
   PMTQA011             INTEGER,                                   /*��������ID                   */
   PMTQA012             NUMBER(5,0),                               /*�ɳ齱����                   */
   PMTQA013             VARCHAR2(255),                             /*��ע                         */
   PMTQA014             INTEGER,                                   /*¼����ID                     */
   PMTQA015             DATE,                                      /*¼������                     */
   PMTQA016             INTEGER,                                   /*�����ID                     */
   PMTQA017             DATE,                                      /*�������                     */
   PMTQA018             VARCHAR2(1)                     not null,  /*���״̬                     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                     */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                 */                               
   CREATE_DATE          DATE,                                      /*��������                     */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                     */
   MODI_DATE            DATE,                                      /*�޸�����                     */
   FLAG                 NUMBER(1),                                 /*����״̬                     */
   constraint PK_TB_PMTQA primary key (PMTQA_ID)				                  
);
create unique index AK_TB_PMTQA on TB_PMTQA (PMTQA002);
create sequence SEQ_TB_PMTQA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTQA to public;
grant index  on TB_PMTQA to public;
grant update on TB_PMTQA to public; 
grant delete on TB_PMTQA to public;  
grant insert on TB_PMTQA to public; 
grant select on SEQ_TB_PMTQA to public;   