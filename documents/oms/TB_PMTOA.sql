/*
================================================================================
��ṹ����:TB_PMTOA
��ṹ����:���Ʒ���ŵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTOA;
drop index AK_TB_PMTOA;
drop table TB_PMTOA;
create table TB_PMTOA  (
   PMTOA_ID             INTEGER                         not null,  /*���Ʒ���ŵ�ID             */
   PMTOA001             INTEGER                         not null,  /*����ID                       */
   PMTOA002             VARCHAR2(30)                    not null,  /*���ŵ���                     */
   PMTOA003             DATE                            not null,  /*��������                     */
   PMTOA004             VARCHAR2(30),                              /*�ͻ�����                     */
   PMTOA005             VARCHAR2(30),                              /*�ͻ��绰                     */
   PMTOA006             INTEGER                         not null,  /*����Ӫ����֯                 */
   PMTOA007             INTEGER                         not null,  /*���Ų���ID                   */
   PMTOA008             INTEGER                         not null,  /*������ԱID                   */
   PMTOA009             VARCHAR2(255),                             /*��ע                         */
   PMTOA010             VARCHAR2(1),                               /*��������                     */
   PMTOA011             INTEGER,                                   /*����ֿ�                     */
   PMTOA012             INTEGER,                                   /*¼����ID                     */
   PMTOA013             DATE,                                      /*¼������                     */
   PMTOA014             INTEGER,                                   /*�����ID                     */
   PMTOA015             DATE,                                      /*�������                     */
   PMTOA016             VARCHAR2(1)                     not null,  /*���״̬                     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                     */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                 */                               
   CREATE_DATE          DATE,                                      /*��������                     */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                     */
   MODI_DATE            DATE,                                      /*�޸�����                     */
   FLAG                 NUMBER(1),                                 /*����״̬                     */
   constraint PK_TB_PMTOA primary key (PMTOA_ID)				                  
);
create unique index AK_TB_PMTOA on TB_PMTOA (PMTOA002);
create sequence SEQ_TB_PMTOA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTOA to public;
grant index  on TB_PMTOA to public;
grant update on TB_PMTOA to public; 
grant delete on TB_PMTOA to public;  
grant insert on TB_PMTOA to public; 
grant select on SEQ_TB_PMTOA to public;   